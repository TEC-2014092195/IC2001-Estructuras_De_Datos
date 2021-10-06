//============================================================================
// Archivo    : Tarea2.cpp
// Autor      : Kevin Hernandez Rostran
// Curso      : Estructuras de Datos - Instituto Tecnológico de Costa Rica
// Descripcion: Crea rectangulos de forma aleatoria
//============================================================================
#include <FL/Fl.H>
#include <FL/Fl_Window.H>
#include <FL/Fl_Button.H>
#include <stdlib.h> // random
#include <iostream>
#include <windows.h> //Para la funcion Sleep
#include <cstdlib>
#include <FL/fl_draw.H> //Para dibujar Boxtype
#include <FL/Fl_Box.H>
using namespace std;



void Assert(bool val, string s) {
  if (!val) { // Assertion failed -- close the program
    cout << "Assertion Failed: " << s << endl;
    exit(-1);
  }
}

// From the software distribution accompanying the textbook
// "A Practical Introduction to Data Structures and Algorithm Analysis,
// Third Edition (C++)" by Clifford A. Shaffer.
// Source code Copyright (C) 2007-2011 by Clifford A. Shaffer.

// This is the file to include in your code if you want access to the
// complete LList template class

int defaultSize = 10;

// First, get the declaration for the base list class

//#include "list.h"
template <typename E> class List { // List ADT
private:
  void operator =(const List&) {}      // Protect assignment
  List(const List&) {}           // Protect copy constructor
public:
  List() {}          // Default constructor
  virtual ~List() {} // Base destructor

  // Clear contents from the list, to make it empty.
  virtual void clear() = 0;

  // Insert an element at the current location.
  // item: The element to be inserted
  virtual void insert(const E& item) = 0;

  // Append an element at the end of the list.
  // item: The element to be appended.
  virtual void append(const E& item) = 0;

  // Remove and return the current element.
  // Return: the element that was removed.
  virtual E remove() = 0;

  // Set the current position to the start of the list
  virtual void moveToStart() = 0;

  // Set the current position to the end of the list
  virtual void moveToEnd() = 0;

  // Move the current position one step left. No change
  // if already at beginning.
  virtual void prev() = 0;

  // Move the current position one step right. No change
  // if already at end.
  virtual void next() = 0;

  // Return: The number of elements in the list.
  virtual int length() const = 0;

  // Return: The position of the current element.
  virtual int currPos() const = 0;

  // Set current position.
  // pos: The position to make current.
  virtual void moveToPos(int pos) = 0;

  // Return: The current element.
  virtual const E& getValue() const = 0;
};
//--------------------Fin list.h



//#include "link.h"
template <typename E> class Link {
public:
  E element;      // Value for this node
  Link *next;        // Pointer to next node in list
  // Constructors
  Link(const E& elemval, Link* nextval =NULL)
    { element = elemval;  next = nextval; }
  Link(Link* nextval =NULL) { next = nextval; }
};
//--------------------Fin link.h
// This is the declaration for LList. It is split into two parts
// because it is too big to fit on one book page
// Linked list implementation
template <typename E> class LList: public List<E> {
private:
  Link<E>* head;       // Pointer to list header
  Link<E>* tail;       // Pointer to last element
  Link<E>* curr;       // Access to current element
  int cnt;    	       // Size of list

  void init() {        // Intialization helper method
    curr = tail = head = new Link<E>;
    cnt = 0;
  }

  void removeall() {   // Return link nodes to free store
    while(head != NULL) {
      curr = head;
      head = head->next;
      delete curr;
    }
  }

public:
  LList(int size=defaultSize) { init(); }    // Constructor
  ~LList() { removeall(); }                   // Destructor
  void print() const;                // Print list contents
  void clear() { removeall(); init(); }       // Clear list

  // Insert "it" at current position
  void insert(const E& it) {
    curr->next = new Link<E>(it, curr->next);
    if (tail == curr) tail = curr->next;  // New tail
    cnt++;
  }

  void append(const E& it) { // Append "it" to list
    tail = tail->next = new Link<E>(it, NULL);
    cnt++;
  }

  // Remove and return current element
  E remove() {
    Assert(curr->next != NULL, "No element");
    E it = curr->next->element;      // Remember value
    Link<E>* ltemp = curr->next;     // Remember link node
    if (tail == curr->next) tail = curr; // Reset tail
    curr->next = curr->next->next;   // Remove from list
    delete ltemp;                    // Reclaim space
    cnt--;			     // Decrement the count
    return it;
  }

  void moveToStart() // Place curr at list start
    { curr = head; }

  void moveToEnd()   // Place curr at list end
    { curr = tail; }

  // Move curr one step left; no change if already at front
  void prev() {
    if (curr == head) return;       // No previous element
    Link<E>* temp = head;
    // March down list until we find the previous element
    while (temp->next!=curr) temp=temp->next;
    curr = temp;
  }

  // Move curr one step right; no change if already at end
  void next()
    { if (curr != tail) curr = curr->next; }

  int length() const  { return cnt; } // Return length

  // Return the position of the current element
  int currPos() const {
    Link<E>* temp = head;
    int i;
    for (i=0; curr != temp; i++)
      temp = temp->next;
    return i;
  }

  // Move down list to "pos" position
  void moveToPos(int pos) {
    Assert ((pos>=0)&&(pos<=cnt), "Position out of range");
    curr = head;
    for(int i=0; i<pos; i++) curr = curr->next;
  }

  const E& getValue() const { // Return current element
    Assert(curr->next != NULL, "No value");
    return curr->next->element;
  }
};




//--------------------------------------------------------------------------------------------

void accion( Fl_Widget*, void* );
//---------------------Variables---------------------
Fl_Window *window;
Fl_Button *resolver;
Fl_Box *b;
int contadorRect;
int cantRect;
int randColor;
int randPosX;
int randPosY;
LList<int> lstRect;
LList<int> lstPosX;
LList<int> lstPosY;
boolean bandera,iniciar;

void eliminar(){


	int valor;
	for(int i=0; i < lstRect.length();i++){
		valor=lstRect.getValue();

		//cout<<window->find(b)<<endl;//Encontrar Index de b

		window->remove(valor+1); //remueve los rectangulos de la ventana
		lstRect.next(); //Decrementa la lista lstRect para eliminar el index en ventana
		lstPosX.prev();
		lstPosY.prev();
		window->redraw();//Actualiza ventana
		Fl::flush(); //Forza la actualizacion de todos

		Sleep(500);
	}

}




void llenarLista(int cantidad){
	for(int i=0;i<cantidad;i++){
		randPosX = rand() % 490;
		randPosY = rand() % 380;

		lstRect.insert(i);
		lstPosX.insert(randPosX);
		lstPosY.insert(randPosY);
	}

	lstPosX.moveToStart();//para iniciar en primer posicion
	lstPosY.moveToStart();

}



void crearRectangulo(int X, int Y){

	randColor = rand() % 250;
	b = new Fl_Box(FL_BORDER_BOX, X, Y, 150, 100, "");

	b->color(randColor);
	window->add(b); //Agrega b a la ventana


}



void rectRandom(int cantidad){
	for(int i=0; i < lstRect.length(); i++){

		randPosX = lstPosX.getValue();
		randPosY = lstPosY.getValue();
		crearRectangulo(randPosX,randPosY);
		if ( iniciar==false ){
			lstRect.prev();
			Sleep(500);
			window->redraw();
			Fl::flush();

		}

		lstPosX.next();
		lstPosY.next();


	}

}



void accion( Fl_Widget* obj, void* ){
	iniciar=false;

	eliminar();

	rectRandom(cantRect);


}

int main (int argc, char * argv[])
{
	iniciar=true;

	if (argv[1]==0){
		cout<<"No hay argumentos en argv"<<endl;
		cantRect = 0;
		cout<<"Digite la cantidad de rectangulos que desea: ";
		cin>>cantRect;
		cout<<endl;
	}else{
		try{
			cantRect = (int) argv[1];
			cout<<"La cantidad de rectangulos por argumento es: "<<cantRect<<endl;
		}catch(int e){
			cout<<"Error de argumento"<<endl;
			cantRect = 0;
			cout<<"Digite la cantidad de rectangulos que desea: ";
			cin>>cantRect;
			cout<<endl;
		}

	}

    window = new Fl_Window (640, 480);
    window->color(FL_DARK_CYAN);
    window->label("Rectangulos Aleatorios");

    resolver = new Fl_Button(300, 450, 100, 30, "Resolver"); //Inicio
    resolver -> color(3);
    resolver -> callback(accion);

	llenarLista(cantRect); //Inicia el llenado de listas
	rectRandom(cantRect); //crea los rectangulos de inicio

	//crearRectangulo(490,380);//Limite
    window->end();
    window->show (argc, argv);

    return(Fl::run());
}
