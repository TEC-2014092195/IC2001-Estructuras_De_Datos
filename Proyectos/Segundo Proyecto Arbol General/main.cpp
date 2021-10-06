//============================================================================
// Autor      : Kevin Hernandez Rostran
// Curso      : Estructuras de Datos - Instituto Tecnológico de Costa Rica
// Descripcion: Aplicacion para graficar un Arbol General a partir de un archivo XML
//              identificando la etiqueta o TAG = "name"
//============================================================================

#include <FL/Fl.H>
#include <FL/Fl_Window.H>
#include <FL/Fl_Menu_Bar.H>
#include <FL/Fl_File_Chooser.H>
#include <FL/fl_draw.H>
#include <FL/Fl_Double_Window.H>
#include "pugixml.hpp" //para leer el archivo xml con la librería pugixml
#include <iostream>
#include <string>
#include <algorithm> //para usar la función replace del std.
#include <math.h> //para utilizar M_PI
using namespace std;

Fl_Double_Window* win; //Variable global para la ventana
Fl_Menu_Bar* menubar;
//Las variables Can_NIVEL# son las cantidades de hijos de cada nivel del arbol
int Can_NIVEL1=0;
int Can_NIVEL2=0;
int Can_NIVEL3=0;
int Can_NIVEL4=0;
int Can_NIVEL5=0;


//---------Nodo Arbol General----------
/*
	La clase Nodo es para manejar los punteros o nodos hijosIzquierdos y hermanosDerechos
	del Arbol General almacenando:
	-valor
	-padre del nodo
	-hijoizquierdo del nodo
	-hermanoDerecho del nodo
	-Posición en X de la coordenada polar
	-Posición en Y de la coordenada polar
	-La visibilidad del nodo
*/
template<typename E> class Nodo{
public:
  // Valor para el Nodo
  E elemento;
  // Puntero al Padre del Nodo
  Nodo* padre;
  // Puntero al hijoIzquierdo del Nodo
  Nodo* hijoIzquierdo;
  // Puntero al hermanoDerecho del Nodo
  Nodo* hermanoDerecho;
  // Posición X del nodo con el calculo de la coordenada polar del Nodo
  int ejeX;
  // Posición Y del nodo con el calculo de la coordenada polar del Nodo
  int ejeY;
  // Variables para definir si el nodo será visible o no
  bool visible;
// +++Constructores de Nodo+++
  /*Todos los punteros del nodo inician en valor NULL y su valor VISIBLE = true*/
  //Constructor definiendole un valor en sus parametros
  Nodo(const E& elemval, Nodo* ppadre =NULL, Nodo* phijo =NULL, Nodo* hermano =NULL)
    { elemento = elemval;  padre = ppadre; hijoIzquierdo = phijo; hermanoDerecho = hermano; visible=true;}
  //Constructor sin parametros
  Nodo(Nodo* ppadre =NULL, Nodo* phijo =NULL, Nodo* hermano =NULL)
  { padre = ppadre; hijoIzquierdo = phijo; hermanoDerecho = hermano; visible=true;  }
};
//---------Fin Nodo Arbol General----------

//---------Arbol General----------
/*
	Basicamente el Arbol inserta raiz, hijoIzquierdo, hermanoDerecho y elemento <E> a cada uno de sus nodos
	y también retorna los valores como padre del nodo, hijoIzquierdo del nodo, o hermanoDerecho del nodo
*/
template <typename E> class Arbol{
public:
	// Nodo raiz del Arbol
    Nodo<E>* raiz;
	// Constructor del Arbol inicia con su raiz = NULL
	Arbol() { raiz = NULL; }
	// Metodo root() para conocer cual es la nodo raiz del Arbol
	Nodo<E>* root(){ return raiz; }
	// Metodo padre(Nodo) para conocer cual es el padre del Nodo que recibe como parametro y lo retorna
	Nodo<E>* padre(Nodo<E>* n){ return n->padre; }
	// Metodo hijoIzquierdo(Nodo) para conocer cual es el hijoIzquierdo del Nodo que recibe como parametro y lo retorna
	Nodo<E>* hijoIzquierdo(Nodo<E>* n){ return n->hijoIzquierdo; }
	// Metodo hermanoDerecho(Nodo) para conocer cual es el hermanoDerecho del Nodo que recibe como parametro y lo retorna
	Nodo<E>* hermanoDerecho(Nodo<E>* n){ return n->hermanoDerecho; }
	// Metodo vacio() retorna true o false si el Arbol esta vacio
	bool vacio()								{ return (raiz==NULL); }
	// Metodo recupera(Nodo) que retorna el elemento del Nodo que recibe como parametro y lo retorna
	E recupera(Nodo<E>* n) 			{ return n->elemento; }
	// Metodo nulo(Nodo) que retorna si el nodo qe recibe apunta a NULL
	bool nulo(Nodo<E>* n) 					{ return (n==NULL); }

	/*
		Metodo insertaRaiz( Elemento) recibe un valor del tipo de Arbol y se lo asigna a la raiz
		mantiene su padre, su hijoIzquierdo y su hermanoDerecho = NULL
	*/
	void insertaRaiz(E e) {
			raiz = new Nodo<E>();
			raiz->elemento = e;
			raiz->padre = NULL;
			raiz->hijoIzquierdo = NULL;
			raiz->hermanoDerecho = NULL;
	}
	/*
		Metodo insertaHijo( Nodo, Elemento) recibe un Nodo y un elemento
		donde a ese nodo se le asigna un hijoIzquierdo y a ese hijoIzquierdo se le asigna el Elemento o dato
	*/
	void insertaHijo(Nodo<E>* n, E e) {
			Nodo<E>* aux = new Nodo<E>();
			aux->elemento = e;
			aux->padre = n;
			aux->hijoIzquierdo = NULL;
			aux->hermanoDerecho = n->hijoIzquierdo;
			n->hijoIzquierdo = aux;
	}
	/*
		Metodo insertaHermano( Nodo, Elemento) recibe un Nodo y un elemento
		donde a ese nodo se le asigna un hermanoDerecho y a ese hermanoDerecho se le asigna el Elemento o dato
	*/
	void insertaHermano(Nodo<E>* n, E e) {
			Nodo<E>* aux = new Nodo<E>();
			aux->elemento = e;
			aux->padre = n->padre;
			aux->hijoIzquierdo = NULL;
			aux->hermanoDerecho = n->hermanoDerecho;
			n->hermanoDerecho = aux;
	}
};
//---------Fin Arbol General----------

// Variable Global del Arbol
Arbol<string>* tree = new Arbol<string>();
bool contieneTAG = false;

//---------Recorrer el arbol----------
/*
	Es el metodo y algoritmo utilizado para recorrer el arbol que se ingres como parametro

*/
void recorrido(Arbol<string>* arbol){

      Nodo<string>* aux2;
      Nodo<string>* aux3;
      Nodo<string>* aux4;
      Nodo<string>* aux5;
	  //El aux1 es el hijoIzquierdo del Arbol
      Nodo<string>* aux1=arbol->raiz->hijoIzquierdo;
      /*
		El while recorre el nodo hasta que no encuentra hijoIzquierdo o hermanoDerecho
		Asi tambien con los demas nodos del Arbol mientras sus hijos o hermanos sean diferentes de NULL
	  */
      while (aux1!=NULL)
      {
        aux2=aux1->hijoIzquierdo;
        while(aux2!=NULL){
            aux3 = aux2->hijoIzquierdo;
            while(aux3!=NULL){
                aux4 = aux3->hijoIzquierdo;
                while(aux4!=NULL){
                    aux5 = aux4->hijoIzquierdo;
                    while(aux5!=NULL){
                        aux5=aux5->hermanoDerecho;
                    }
                    aux4=aux4->hermanoDerecho;
                }
                aux3=aux3->hermanoDerecho;
            }
            aux2=aux2->hermanoDerecho;
        }
        aux1=aux1->hermanoDerecho;
      }
}
//fin recorrer arbol



//---------Cargar XML----------
/*
	Metodo que recorre el archivo que recibe como parametro y lo almacena en el Arbol
*/
int cargar_XML(const char* path){

    contieneTAG=false;
    pugi::xml_document doc;
    if (!doc.load_file(path)) return -1;

    pugi::xml_node profile = doc.first_child();
    string nombre = "";
	//Variable para comparar el TAG con "name"
    string comparar ="name";

	// Nodos utilizados para alamacenar los elementos encontrados en el XML
    Nodo<string>* nodoRaiz = new Nodo<string>();
    Nodo<string>* nodoNivel1;
    Nodo<string>* nodoNivel2;
    Nodo<string>* nodoNivel3;
    Nodo<string>* nodoNivel4;
    Nodo<string>* nodoNivel5;


    for (pugi::xml_node xmlRaiz = profile.first_child(); xmlRaiz; xmlRaiz = xmlRaiz.next_sibling())
    {
        nombre = xmlRaiz.name();
        if (nombre.compare(comparar)==0){
				//Inserta Raiz al arbol
                tree->insertaRaiz( xmlRaiz.text().get() );
                contieneTAG=true;
                //Se asignan los valores predeterminados de la cantidad de nodos del nivel
                Can_NIVEL1=0;
                Can_NIVEL2=0;
                Can_NIVEL3=0;
                Can_NIVEL4=0;
                Can_NIVEL5=0;
        }
        for (pugi::xml_node xmlNivel1 = xmlRaiz.first_child(); xmlNivel1; xmlNivel1 = xmlNivel1.next_sibling())
        {
            nombre = xmlNivel1.name();
			//Compara la variable comparar="name" con el TAG que es la variable nombre
            if (nombre.compare(comparar)==0){


                    /*
						---insertar de hijoizq o hermano derecho nivel1
						si su hijoizquierdo es NULL le crea un hijo a ese nodo
						sino crea un hermanoDerecho
						y amenta la Can_NIVEL# en uno para almacenar cantidad de hijos del nodo padre
						así con los demás niveles
					*/
                    if (tree->raiz->hijoIzquierdo==NULL){
                        tree->insertaHijo( tree->raiz , xmlNivel1.text().get() );
                        nodoNivel1 = tree->raiz->hijoIzquierdo;
                        Can_NIVEL1++;
                    }else{
                        tree->insertaHermano( nodoNivel1 , xmlNivel1.text().get() );
                        nodoNivel1=nodoNivel1->hermanoDerecho;
                        Can_NIVEL1++;
                    }
            }
            for (pugi::xml_node  xmlNivel2 = xmlNivel1.first_child(); xmlNivel2; xmlNivel2 = xmlNivel2.next_sibling())
            {
                nombre = xmlNivel2.name();
				//Compara la variable comparar="name" con el TAG que es la variable nombre
                if (nombre.compare(comparar)==0){
                    /*
						---insertar de hijoizq o hermano derecho nivel2
						si su hijoizquierdo es NULL le crea un hijo a ese nodo
						sino crea un hermanoDerecho
						y amenta la Can_NIVEL# en uno para almacenar cantidad de hijos del nodo padre
					*/
                    if (nodoNivel1->hijoIzquierdo==NULL){
                        tree->insertaHijo( nodoNivel1 , xmlNivel2.text().get() );
                        nodoNivel2 = nodoNivel1->hijoIzquierdo;
                        Can_NIVEL2++;
                    }else{
                        tree->insertaHermano( nodoNivel2 , xmlNivel2.text().get() );
                        nodoNivel2=nodoNivel2->hermanoDerecho;
                        Can_NIVEL2++;
                    }
                }
				for (pugi::xml_node  xmlNivel3 = xmlNivel2.first_child(); xmlNivel3; xmlNivel3 = xmlNivel3.next_sibling()){
                    nombre = xmlNivel3.name();
					//Compara la variable comparar="name" con el TAG que es la variable nombre
                    if (nombre.compare(comparar)==0){
						/*
							---insertar de hijoizq o hermano derecho nivel3
							si su hijoizquierdo es NULL le crea un hijo a ese nodo
							sino crea un hermanoDerecho
							y amenta la Can_NIVEL# en uno para almacenar cantidad de hijos del nodo padre
						*/
                        if (nodoNivel2->hijoIzquierdo==NULL){
                            tree->insertaHijo( nodoNivel2 , xmlNivel3.text().get() );
                            nodoNivel3 = nodoNivel2->hijoIzquierdo;
                            Can_NIVEL3++;
                        }else{
                            tree->insertaHermano( nodoNivel3 , xmlNivel3.text().get() );
                            nodoNivel3=nodoNivel3->hermanoDerecho;
                            Can_NIVEL3++;
                        }
                    }
                    for (pugi::xml_node  xmlNivel4 = xmlNivel3.first_child(); xmlNivel4; xmlNivel4 = xmlNivel4.next_sibling()){
                            nombre = xmlNivel4.name();
							//Compara la variable comparar="name" con el TAG que es la variable nombre
                            if (nombre.compare(comparar)==0){
                                /*
									---insertar de hijoizq o hermano derecho nivel4
									si su hijoizquierdo es NULL le crea un hijo a ese nodo
									sino crea un hermanoDerecho
									y amenta la Can_NIVEL# en uno para almacenar cantidad de hijos del nodo padre
								*/
                                if (nodoNivel3->hijoIzquierdo==NULL){
                                    tree->insertaHijo( nodoNivel3 , xmlNivel4.text().get() );
                                    nodoNivel4 = nodoNivel3->hijoIzquierdo;
                                    Can_NIVEL4++;
                                }else{
                                    tree->insertaHermano( nodoNivel4 , xmlNivel4.text().get() );
                                    nodoNivel4=nodoNivel4->hermanoDerecho;
                                    Can_NIVEL4++;
                                }
                            }
                            for (pugi::xml_node  xmlNivel5 = xmlNivel4.first_child(); xmlNivel5; xmlNivel5 = xmlNivel5.next_sibling()){
                                nombre = xmlNivel5.name();
								//Compara la variable comparar="name" con el TAG que es la variable nombre
                                if (nombre.compare(comparar)==0){
                                    /*
										---insertar de hijoizq o hermano derecho nivel5
										si su hijoizquierdo es NULL le crea un hijo a ese nodo
										sino crea un hermanoDerecho
										y amenta la Can_NIVEL# en uno para almacenar cantidad de hijos del nodo padre
									*/
                                    if (nodoNivel4->hijoIzquierdo==NULL){
                                        tree->insertaHijo( nodoNivel4 , xmlNivel5.text().get() );
                                        nodoNivel5 = nodoNivel4->hijoIzquierdo;
                                        Can_NIVEL5++;
                                    }else{
                                        tree->insertaHermano( nodoNivel5 , xmlNivel5.text().get() );
                                        nodoNivel5=nodoNivel5->hermanoDerecho;
                                        Can_NIVEL5++;
                                    }
                                }
                            }//Fin For Nivel5
                    }//Fin For Nivel4
				}//Fin For Nivel3
            }//Fin For Nivel2
        }//Fin For Nivel1
    }//Fin For Raiz
}

//---------Buscar Nodo en Arbol según Valor----------
/*
	Metodo que busca un Nodo conforme al parametro valor y lo retorna
	Comparando el labelNodo con el parametro valor
*/
Nodo<string>* buscarNodo(string valor){

      Nodo<string>* aux2;
      Nodo<string>* aux3;
      Nodo<string>* aux4;
      Nodo<string>* aux5;
      Nodo<string>* aux1=tree->raiz->hijoIzquierdo;
      string labelRaiz = tree->raiz->elemento;
      string labelNodo;
      if (labelRaiz.compare(valor) == 0){
         return tree->raiz;
      }
	  // busca el Nodo por todos los Nodos del Arbol hasta que llegue al NULL
      while (aux1!=NULL)
      {
        labelNodo = aux1->elemento;
        if (labelNodo.compare(valor) == 0){
            return aux1;
        }
        aux2=aux1->hijoIzquierdo;
        while(aux2!=NULL){
            labelNodo = aux2->elemento;
            if (labelNodo.compare(valor) == 0){
                return aux2;
            }
            aux3 = aux2->hijoIzquierdo;
            while(aux3!=NULL){
                labelNodo = aux3->elemento;
                if (labelNodo.compare(valor) == 0){
                    return aux3;
                }
                aux4 = aux3->hijoIzquierdo;
                while(aux4!=NULL){
                    labelNodo = aux4->elemento;
                    if (labelNodo.compare(valor) == 0){
                        return aux4;
                    }
                    aux5 = aux4->hijoIzquierdo;
                    while(aux5!=NULL){
                        labelNodo = aux5->elemento;
                        if (labelNodo.compare(valor) == 0){
                            return aux5;
                        }
                        aux5=aux5->hermanoDerecho;
                    }
                    aux4=aux4->hermanoDerecho;
                }
                aux3=aux3->hermanoDerecho;
            }
            aux2=aux2->hermanoDerecho;
        }
        aux1=aux1->hermanoDerecho;
      }

}
//fin recorrer arbol
//---------Cambiar visible----------
/*
	Recibe un pnodo como parametro y evalua si los hijos de ese nodo estan visible
	Si es true se cambia la visibilidad a FALSE de todos sus nodos hijos
	sino a TRUE
*/
void cambiarVisibleNodo(Nodo<string>* pnodo){

      Nodo<string>* aux2;
      Nodo<string>* aux3;
      Nodo<string>* aux4;
      Nodo<string>* aux5;
      Nodo<string>* aux1;
      bool bandera = true;

      if (pnodo->hijoIzquierdo!=NULL){
        aux1=pnodo->hijoIzquierdo;
        if (aux1->visible==true){
            bandera = false;
        }else{
            bandera = true;
        }
        while (aux1!=NULL){
            aux1->visible = bandera;
            aux2=aux1->hijoIzquierdo;
            while(aux2!=NULL){
                aux2->visible = bandera;
                aux3 = aux2->hijoIzquierdo;
                while(aux3!=NULL){
                    aux3->visible = bandera;
                    aux4 = aux3->hijoIzquierdo;
                    while(aux4!=NULL){
                        aux4->visible = bandera;
                        aux5 = aux4->hijoIzquierdo;
                        while(aux5!=NULL){
                            aux5->visible = bandera;
                            aux5=aux5->hermanoDerecho;
                        }
                        aux4=aux4->hermanoDerecho;
                    }
                    aux3=aux3->hermanoDerecho;
                }
                aux2=aux2->hermanoDerecho;
            }
            aux1=aux1->hermanoDerecho;
          }
      }
}
//fin recorrer arbol

//--------------------------------------------------------------------------------------

//------------------Lienzo------------------
/*
	Objeto que dibuja el background de la ventana y las respectivas lineas del Arbol
*/
class Lienzo : public Fl_Box {
protected:

    void draw() {
    fl_push_clip(x(),y(),w(),h());
    fl_color(FL_DARK2);
	//Define tamanio de background
    fl_rectf(x(),y(),w(),h());
    fl_push_matrix();
    fl_translate(x(),y());
    //Si el arbol no esta vacio d¿ibuja sus lineas o ramas
    if (!tree->vacio()){
        Nodo<string>* aux2;
        Nodo<string>* aux3;
        Nodo<string>* aux4;
        Nodo<string>* aux5;
        Nodo<string>* aux1=tree->raiz->hijoIzquierdo;

        while (aux1!=NULL)
        {
            if(aux1->visible==true){
                fl_color(FL_WHITE);
				/*
					Dibuja (X,Y,X1,Y1) con
					X= al ejeX del nodo padre
					Y= al ejeY del nodo padre
					X1= al ejeX del nodo
					Y1= al ejeY del nodo
				*/
                fl_line(aux1->padre->ejeX+15,aux1->padre->ejeY+15,aux1->ejeX+10,aux1->ejeY+10);
            }

        aux2=aux1->hijoIzquierdo;
        while(aux2!=NULL){
            if(aux2->visible==true){
                fl_color(FL_BLUE);
				/*
					Dibuja (X,Y,X1,Y1) con
					X= al ejeX del nodo padre
					Y= al ejeY del nodo padre
					X1= al ejeX del nodo
					Y1= al ejeY del nodo
				*/
                fl_line(aux2->padre->ejeX+10,aux2->padre->ejeY+10,aux2->ejeX+5,aux2->ejeY+5);
            }

            aux3 = aux2->hijoIzquierdo;
            while(aux3!=NULL){
                if(aux3->visible==true){
                    fl_color(FL_RED);
					/*
						Dibuja (X,Y,X1,Y1) con
						X= al ejeX del nodo padre
						Y= al ejeY del nodo padre
						X1= al ejeX del nodo
						Y1= al ejeY del nodo
					*/
                    fl_line(aux3->padre->ejeX+5,aux3->padre->ejeY+5,aux3->ejeX+5,aux3->ejeY+5);
                }

                aux4 = aux3->hijoIzquierdo;
                while(aux4!=NULL){
                    if(aux4->visible==true){
                        fl_color(FL_DARK_GREEN);
						/*
							Dibuja (X,Y,X1,Y1) con
							X= al ejeX del nodo padre
							Y= al ejeY del nodo padre
							X1= al ejeX del nodo
							Y1= al ejeY del nodo
						*/
                        fl_line(aux4->padre->ejeX+5,aux4->padre->ejeY+5,aux4->ejeX+5,aux4->ejeY+5);
                    }

                    aux5 = aux4->hijoIzquierdo;
                    while(aux5!=NULL){
                        if(aux5->visible==true){
                            fl_color(FL_DARK_MAGENTA);
							/*
								Dibuja (X,Y,X1,Y1) con
								X= al ejeX del nodo padre
								Y= al ejeY del nodo padre
								X1= al ejeX del nodo
								Y1= al ejeY del nodo
							*/
                            fl_line(aux5->padre->ejeX+5,aux5->padre->ejeY+5,aux5->ejeX+5,aux5->ejeY+5);
                        }
                        aux5=aux5->hermanoDerecho;
                    }
                    aux4=aux4->hermanoDerecho;
                }
                aux3=aux3->hermanoDerecho;
            }
            aux2=aux2->hermanoDerecho;
        }
        aux1=aux1->hermanoDerecho;
        }
    }

    fl_pop_matrix();
    fl_pop_clip();
    }
public:
    Lienzo(int X, int Y, int W, int H, const char *L=0) : Fl_Box(X,Y,W,H,L) {

        box(FL_UP_BOX);
        color(FL_GRAY);
    }

};
//Variable Global de lienzo
Lienzo* lienzo;

//------NodoBox
/*
	El constructor NodoBox(X,Y, W, H) dibuja un Fl_Box circular
	y aplica a su atributo NodoBox->tooltip(valor) el valor del nodo->elemento o sea
	el elemneto de cada nodo
*/
class NodoBox : public Fl_Box {
protected:

    //------------------Lienzo------------------
    /*
        Objeto que dibuja el background de la ventana y las respectivas lineas del Arbol
    */
    class Lienzo : public Fl_Box {
    protected:

        void draw() {
        fl_push_clip(x(),y(),w(),h());
        fl_color(FL_DARK2);
        //Define tamanio de background
        fl_rectf(x(),y(),w(),h());
        fl_push_matrix();
        fl_translate(x(),y());
        //Si el arbol no esta vacio d¿ibuja sus lineas o ramas
        if (!tree->vacio()){
            Nodo<string>* aux2;
            Nodo<string>* aux3;
            Nodo<string>* aux4;
            Nodo<string>* aux5;
            Nodo<string>* aux1=tree->raiz->hijoIzquierdo;

            while (aux1!=NULL)
            {
                if(aux1->visible==true){
                    fl_color(FL_WHITE);
                    /*
                        Dibuja (X,Y,X1,Y1) con
                        X= al ejeX del nodo padre
                        Y= al ejeY del nodo padre
                        X1= al ejeX del nodo
                        Y1= al ejeY del nodo
                    */
                    fl_line(aux1->padre->ejeX+15,aux1->padre->ejeY+15,aux1->ejeX+10,aux1->ejeY+10);
                }

            aux2=aux1->hijoIzquierdo;
            while(aux2!=NULL){
                if(aux2->visible==true){
                    fl_color(FL_BLUE);
                    /*
                        Dibuja (X,Y,X1,Y1) con
                        X= al ejeX del nodo padre
                        Y= al ejeY del nodo padre
                        X1= al ejeX del nodo
                        Y1= al ejeY del nodo
                    */
                    fl_line(aux2->padre->ejeX+10,aux2->padre->ejeY+10,aux2->ejeX+5,aux2->ejeY+5);
                }

                aux3 = aux2->hijoIzquierdo;
                while(aux3!=NULL){
                    if(aux3->visible==true){
                        fl_color(FL_RED);
                        /*
                            Dibuja (X,Y,X1,Y1) con
                            X= al ejeX del nodo padre
                            Y= al ejeY del nodo padre
                            X1= al ejeX del nodo
                            Y1= al ejeY del nodo
                        */
                        fl_line(aux3->padre->ejeX+5,aux3->padre->ejeY+5,aux3->ejeX+5,aux3->ejeY+5);
                    }

                    aux4 = aux3->hijoIzquierdo;
                    while(aux4!=NULL){
                        if(aux4->visible==true){
                            fl_color(FL_DARK_GREEN);
                            /*
                                Dibuja (X,Y,X1,Y1) con
                                X= al ejeX del nodo padre
                                Y= al ejeY del nodo padre
                                X1= al ejeX del nodo
                                Y1= al ejeY del nodo
                            */
                            fl_line(aux4->padre->ejeX+5,aux4->padre->ejeY+5,aux4->ejeX+5,aux4->ejeY+5);
                        }

                        aux5 = aux4->hijoIzquierdo;
                        while(aux5!=NULL){
                            if(aux5->visible==true){
                                fl_color(FL_DARK_MAGENTA);
                                /*
                                    Dibuja (X,Y,X1,Y1) con
                                    X= al ejeX del nodo padre
                                    Y= al ejeY del nodo padre
                                    X1= al ejeX del nodo
                                    Y1= al ejeY del nodo
                                */
                                fl_line(aux5->padre->ejeX+5,aux5->padre->ejeY+5,aux5->ejeX+5,aux5->ejeY+5);
                            }
                            aux5=aux5->hermanoDerecho;
                        }
                        aux4=aux4->hermanoDerecho;
                    }
                    aux3=aux3->hermanoDerecho;
                }
                aux2=aux2->hermanoDerecho;
            }
            aux1=aux1->hermanoDerecho;
            }
        }

        fl_pop_matrix();
        fl_pop_clip();
        }
    public:
        Lienzo(int X, int Y, int W, int H, const char *L=0) : Fl_Box(X,Y,W,H,L) {

            box(FL_UP_BOX);
            color(FL_GRAY);
        }

    };

    //--------------------Callbacks de Menu----------
    static void open_cb(Fl_Widget*, void*) {

        // Crear un File Chooser y mostrarlo
        Fl_File_Chooser chooser(".",                        // directorio de inicio
                                "*.xml",                        // filtro
                                Fl_File_Chooser::SINGLE,     // tipo de seleccion
                                "Arbol General");        // titulo
        chooser.show();

        //Bloquea el proceso hasta que el file chooser se cierre
        while(chooser.shown())
            { Fl::wait(); }
        //Si el usuario presiona Cancel retorna
        if ( chooser.value() == NULL )
            { fprintf(stderr, "El usuario presiono Cancel \n"); return; }

        //Variable Direccion del archivo cargado
        string dir = chooser.value();
        cargar_XML(dir.c_str());
        if (!contieneTAG){
            fl_alert("El archivo no contiene la etiqueta <name> por lo que se mantiene el Árbol anterior");
        }else{
            NodoBox*b;
            b->refrescarPantalla();
        }


    }

    // Callback: cuando se presiona 'Salir'
    static void quit_cb(Fl_Widget*, void*) {
        exit(0);
    }

    static void help_cb(Fl_Widget*, void*) {
        fl_message("Tip#1: Cargue un archivo XML que contenga \n\t    la etiqueta <name> para visualizar el Árbol");
        fl_message("Tip#2: Presione cada uno de los nodos del \n\t    Árbol para ocultar o visualizar sus hijos");
        fl_message("Tip#3: Coloque el mouse sobre cualquiera de \n\t    los nodos para visualizar la etiqueta correspondiente");
    }

    static void about_cb(Fl_Widget*, void*) {
        fl_message("Implementación: Diagrama de Árbol Circular\nAutor: Kevin Hernández Rostrán\nCurso: Estructuras de Datos - Instituto Tecnológico de Costa Rica");
    }
    //-------------------refrescarPantalla
    /*
        Limpia la pantalla y refresca todos los elementos
        de la ventana evaluando si el nodo es oculto o no
        y refrescando y ocultando las ramas de cada nivel
        del arbol
        Calcula en cada nodo su cardinalidad respectiva
        con la formula:
        CITA = (2*PI)/Cantidad de nodos del nivel
        X = radio*cos(CITA*index del nodo)
        Y = radio*sin(CITA*index del nodo)
    */
    void refrescarPantalla(){
        win->begin();
            win->clear();
            win->redraw();
            Fl_Menu_Bar* menubar = new Fl_Menu_Bar(0,0,700,25);
            menubar->add("Archivo/Abrir", 0, open_cb);
            menubar->add("Archivo/Salir", 0, quit_cb);
            menubar->add("Ayuda/Tips", 0, help_cb);
            menubar->add("Ayuda/Acerca de...", 0, about_cb);

            Lienzo* lienzo = new Lienzo(0,30,win->w(),(int)win->h()-30);
            NodoBox* b = new NodoBox((int)win->w()/2,(int) win->h()/2, 30, 30);
            b->color(FL_WHITE);
            b->box(FL_ROUNDED_BOX);
            string label = tree->raiz->elemento;
            tree->raiz->ejeX=(int)win->w()/2;
            tree->raiz->ejeY=(int)win->h()/2;
            b->tooltip(label.c_str());
              Nodo<string>* aux2;
              Nodo<string>* aux3;
              Nodo<string>* aux4;
              Nodo<string>* aux5;
              Nodo<string>* aux1=tree->raiz->hijoIzquierdo;
              //cout<<"Raiz =>"<<tree->raiz->elemento<<endl;
              int indexN1 =0;
              int indexN2 =0;
              int indexN3 =0;
              int indexN4 =0;
              int indexN5 =0;
              while (aux1!=NULL)
              {
                //inicio
                indexN1++;
                double CITA = (2*M_PI)/Can_NIVEL1;
                int X = 100*cos(CITA*indexN1);
                int Y = 100*sin(CITA*indexN1);
                X = (win->w()/2) + X;
                Y = (win->h()/2) - Y;
                aux1->ejeX=X;
                aux1->ejeY=Y;
                if (aux1->visible){

                    NodoBox* b = new NodoBox(X,Y, 20, 20);
                    b->color(FL_BLUE);
                    b->box(FL_ROUNDED_BOX);
                    label = aux1->elemento;
                    b->tooltip(label.c_str());
                    //fin
                    //cout<<"\t"<<aux1->elemento<<endl;
                }


                aux2=aux1->hijoIzquierdo;
                while(aux2!=NULL){
                    //inicio
                    indexN2++;
                    double CITA = (2*M_PI)/Can_NIVEL2;
                    int X = 150*cos(CITA*indexN2);
                    int Y = 150*sin(CITA*indexN2);
                    X = (win->w()/2) + X;
                    Y = (win->h()/2) - Y;
                    aux2->ejeX=X;
                    aux2->ejeY=Y;
                    if (aux2->visible){

                        NodoBox* b = new NodoBox(X,Y, 10, 10);
                        b->color(FL_RED);
                        b->box(FL_ROUNDED_BOX);
                        label = aux2->elemento;
                        b->tooltip(label.c_str());
                        //fin

                        //cout<<"\t\t"<<aux2->elemento<<endl;
                    }

                    aux3 = aux2->hijoIzquierdo;
                    while(aux3!=NULL){
                        //inicio
                        indexN3++;
                        double CITA = (2*M_PI)/Can_NIVEL3;
                        int X = 200*cos(CITA*indexN3);
                        int Y = 200*sin(CITA*indexN3);
                        X = (win->w()/2) + X;
                        Y = (win->h()/2) - Y;
                        aux3->ejeX=X;
                        aux3->ejeY=Y;
                        if (aux3->visible){

                            NodoBox* b = new NodoBox(X,Y, 10, 10);
                            b->color(FL_DARK_GREEN);
                            b->box(FL_ROUNDED_BOX);
                            label = aux3->elemento;
                            b->tooltip(label.c_str());
                            //fin

                            //cout<<"\t\t\t"<<aux3->elemento<<endl;
                        }

                        aux4 = aux3->hijoIzquierdo;
                        while(aux4!=NULL){
                            //inicio
                            indexN4++;
                            double CITA = (2*M_PI)/Can_NIVEL4;
                            int X = 250*cos(CITA*indexN4);
                            int Y = 250*sin(CITA*indexN4);
                            X = (win->w()/2) + X;
                            Y = (win->h()/2) - Y;
                            aux4->ejeX=X;
                            aux4->ejeY=Y;
                            if (aux4->visible){

                                NodoBox* b = new NodoBox(X,Y, 10, 10);
                                b->color(FL_DARK_MAGENTA);
                                b->box(FL_ROUNDED_BOX);
                                label = aux4->elemento;
                                b->tooltip(label.c_str());
                                //fin


                                //cout<<"\t\t\t\t"<<aux4->elemento<<endl;
                            }

                            aux5 = aux4->hijoIzquierdo;
                            while(aux5!=NULL){
                                //inicio
                                indexN5++;
                                double CITA = (2*M_PI)/Can_NIVEL5;
                                int X = 300*cos(CITA*indexN5);
                                int Y = 300*sin(CITA*indexN5);
                                X = (win->w()/2) + X;
                                Y = (win->h()/2) - Y;
                                aux5->ejeX=X;
                                aux5->ejeY=Y;
                                if (aux5->visible){

                                    NodoBox* b = new NodoBox(X,Y, 10, 10);
                                    b->color(FL_BLACK);
                                    b->box(FL_ROUNDED_BOX);
                                    label = aux5->elemento;
                                    b->tooltip(label.c_str());
                                    //fin

                                    //cout<<"\t\t\t\t\t"<<aux5->elemento<<endl;
                                }

                                aux5=aux5->hermanoDerecho;
                            }
                            aux4=aux4->hermanoDerecho;
                        }
                        aux3=aux3->hermanoDerecho;
                    }
                    aux2=aux2->hermanoDerecho;
                }
                aux1=aux1->hermanoDerecho;

              }
        win->end();
        lienzo->redraw();
        win->redraw();
    }
    int handle(int e) {

        int ret = Fl_Box::handle(e);
        switch ( e ) {
            case FL_PUSH:
                Nodo<string>* nodobuscado;
				//Busca el nodo segun el valor del que se presiono
                nodobuscado = buscarNodo(tooltip());
                cout<<nodobuscado->elemento<<endl;
				//Cambia los hijos del nodo de estado visible
                cambiarVisibleNodo(nodobuscado);
				//Redibuja los nodos del Arbol
                refrescarPantalla();
                win->redraw();
                return(1);
            case FL_RELEASE:
                return(1);
            case FL_DRAG:
                return(1);
        }
        return(ret);
    }


public:
    NodoBox(int X, int Y, int W, int H, const char *L=0) : Fl_Box(X,Y,W,H,L) {

        box(FL_UP_BOX);
        color(FL_GRAY);

    }

};
//+++++++fin NodoBox






//-------------------refrescarPantalla
/*
    Limpia la pantalla y refresca todos los elementos
    de la ventana evaluando si el nodo es oculto o no
    y refrescando y ocultando las ramas de cada nivel
    del arbol
    Calcula en cada nodo su cardinalidad respectiva
    con la formula:
    CITA = (2*PI)/Cantidad de nodos del nivel
    X = radio*cos(CITA*index del nodo)
    Y = radio*sin(CITA*index del nodo)
*/
void refrescarPantalla(){
    win->begin();
        win->redraw();
		//Crea un NodoBox de la raiz del Arbol
        NodoBox* b = new NodoBox((int)win->w()/2,(int) win->h()/2, 30, 30);
        b->color(FL_WHITE);
        b->box(FL_ROUNDED_BOX);
        string label = tree->raiz->elemento;
        tree->raiz->ejeX=(int)win->w()/2;
        tree->raiz->ejeY=(int)win->h()/2;
        b->tooltip(label.c_str());

          Nodo<string>* aux2;
          Nodo<string>* aux3;
          Nodo<string>* aux4;
          Nodo<string>* aux5;
          Nodo<string>* aux1=tree->raiz->hijoIzquierdo;

          int indexN1 =0;
          int indexN2 =0;
          int indexN3 =0;
          int indexN4 =0;
          int indexN5 =0;
          while (aux1!=NULL)
          {
            //inicio
            if (aux1->visible==true){
                indexN1++;
                double CITA = (2*M_PI)/Can_NIVEL1;
                int X = 100*cos(CITA*indexN1);
                int Y = 100*sin(CITA*indexN1);
                X = (win->w()/2) + X;
                Y = (win->h()/2) - Y;
                NodoBox* b = new NodoBox(X,Y, 20, 20);
                b->color(FL_BLUE);
                b->box(FL_ROUNDED_BOX);
                label = aux1->elemento;
                b->tooltip(label.c_str());
                //fin
				//Almacena ejeX y ejeY en el nodo
                aux1->ejeX=X;
                aux1->ejeY=Y;
            }

            aux2=aux1->hijoIzquierdo;
            while(aux2!=NULL){
                //inicio
                if (aux2->visible==true){
                    indexN2++;
                    double CITA = (2*M_PI)/Can_NIVEL2;
                    int X = 150*cos(CITA*indexN2);
                    int Y = 150*sin(CITA*indexN2);
                    X = (win->w()/2) + X;
                    Y = (win->h()/2) - Y;
                    NodoBox* b = new NodoBox(X,Y, 10, 10);
                    b->color(FL_RED);
                    b->box(FL_ROUNDED_BOX);
                    label = aux2->elemento;
                    b->tooltip(label.c_str());
                    //fin
                    aux2->ejeX=X;
                    aux2->ejeY=Y;

                }

                aux3 = aux2->hijoIzquierdo;
                while(aux3!=NULL){
                    //inicio
                    if (aux3->visible==true){
                        indexN3++;
                        double CITA = (2*M_PI)/Can_NIVEL3;
                        int X = 200*cos(CITA*indexN3);
                        int Y = 200*sin(CITA*indexN3);
                        X = (win->w()/2) + X;
                        Y = (win->h()/2) - Y;
                        NodoBox* b = new NodoBox(X,Y, 10, 10);
                        b->color(FL_DARK_GREEN);
                        b->box(FL_ROUNDED_BOX);
                        label = aux3->elemento;
                        b->tooltip(label.c_str());
                        //fin
                        aux3->ejeX=X;
                        aux3->ejeY=Y;

                    }

                    aux4 = aux3->hijoIzquierdo;
                    while(aux4!=NULL){
                        //inicio
                        if (aux4->visible == true){
                            indexN4++;
                            double CITA = (2*M_PI)/Can_NIVEL4;
                            int X = 250*cos(CITA*indexN4);
                            int Y = 250*sin(CITA*indexN4);
                            X = (win->w()/2) + X;
                            Y = (win->h()/2) - Y;
                            NodoBox* b = new NodoBox(X,Y, 10, 10);
                            b->color(FL_DARK_MAGENTA);
                            b->box(FL_ROUNDED_BOX);
                            label = aux4->elemento;
                            b->tooltip(label.c_str());
                            //fin
                            aux4->ejeX=X;
                            aux4->ejeY=Y;
                        }

                        aux5 = aux4->hijoIzquierdo;
                        while(aux5!=NULL){
                            //inicio
                            if (aux5->visible==true){
                                indexN5++;
                                double CITA = (2*M_PI)/Can_NIVEL5;
                                int X = 300*cos(CITA*indexN5);
                                int Y = 300*sin(CITA*indexN5);
                                X = (win->w()/2) + X;
                                Y = (win->h()/2) - Y;
                                NodoBox* b = new NodoBox(X,Y, 10, 10);
                                b->color(FL_BLACK);
                                b->box(FL_ROUNDED_BOX);
                                label = aux5->elemento;
                                b->tooltip(label.c_str());
                                //fin
                                aux5->ejeX=X;
                                aux5->ejeY=Y;
                            }

                            aux5=aux5->hermanoDerecho;
                        }
                        aux4=aux4->hermanoDerecho;
                    }
                    aux3=aux3->hermanoDerecho;
                }
                aux2=aux2->hermanoDerecho;
            }
            aux1=aux1->hermanoDerecho;

          }
    win->end();
    lienzo->redraw();
    win->redraw();
}

//--------------------Callbacks de Menu----------
void open_cb(Fl_Widget*, void*) {

    // Crear un File Chooser y mostrarlo
    Fl_File_Chooser chooser(".",                        // directorio de inicio
                            "*.xml",                        // filtro
                            Fl_File_Chooser::SINGLE,     // tipo de seleccion
                            "Arbol General");        // titulo
    chooser.show();

    //Bloquea el proceso hasta que el file chooser se cierre
    while(chooser.shown())
        { Fl::wait(); }
    //Si el usuario presiona Cancel retorna
    if ( chooser.value() == NULL )
        { fprintf(stderr, "El usuario presiono Cancel \n"); return; }

	//Variable Direccion del archivo cargado
    string dir = chooser.value();
    cargar_XML(dir.c_str());
    if (!contieneTAG){
        fl_alert("El archivo no contiene la etiqueta <name> por lo que no se cargó ningún Árbol");
    }else{
        refrescarPantalla();
    }

}

// Callback: cuando se presiona 'Salir'
void quit_cb(Fl_Widget*, void*) {
    exit(0);
}
void help_cb(Fl_Widget*, void*) {
    fl_message("Tip#1: Cargue un archivo XML que contenga \n\t    la etiqueta <name> para visualizar el Árbol");
    fl_message("Tip#2: Presione cada uno de los nodos del \n\t    Árbol para ocultar o visualizar sus hijos");
    fl_message("Tip#3: Coloque el mouse sobre cualquiera de \n\t    los nodos para visualizar la etiqueta correspondiente");
}

void about_cb(Fl_Widget*, void*) {
    fl_message("Implementación: Diagrama de Árbol Circular\nAutor: Kevin Hernández Rostrán\nCurso: Estructuras de Datos - Instituto Tecnológico de Costa Rica");
}

//---------Main----------
int main(){

    win = new Fl_Double_Window(700, 700, "Arbol Circular");
	//crea un barra de menu
    menubar = new Fl_Menu_Bar(0,0,700,25);
    menubar->add("Archivo/Abrir", 0, open_cb);
    menubar->add("Archivo/Salir", 0, quit_cb);
    menubar->add("Ayuda/Tips", 0, help_cb);
    menubar->add("Ayuda/Acerca de...", 0, about_cb);
	//Crea el background de la ventana en blanco
    lienzo = new Lienzo(0,30,win->w(),(int)win->h()-30);

    win->end();
    win->show();
    return(Fl::run());

}
