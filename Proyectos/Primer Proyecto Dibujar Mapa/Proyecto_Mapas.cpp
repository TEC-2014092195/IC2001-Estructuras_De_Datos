//============================================================================
// Archivo    : Proyecto?Mapas.cpp
// Autor      : Kevin Hernandez Rostran
// Curso      : Estructuras de Datos - Instituto Tecnológico de Costa Rica
// Descripcion: Aplicacion tipo Viewer para mostrar mapas 
//============================================================================
#include <FL/Fl.H>
#include <FL/Fl.H>
#include <FL/Fl_Window.H>
#include <FL/Fl_Group.H>
#include <FL/Fl.H>
#include <FL/Fl_Scroll.H>
#include <FL/Fl_Box.H>
#include <FL/fl_draw.H>

#include <FL/names.h>
#include <fstream>
#include <string>
#include <iostream>
#include <cstdlib>
#include <stdlib.h>
using namespace std;



//-----------Inicio Listas--------------
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




//---------------------------Fin Listas---------------------------------------------------------


//-----------------------
int escalaX = 680;
int escalaY = 600;
int pixelesX = escalaX/4;
int pixelesY = escalaY/4;
//----------------------

LList<double> lstPosX;
LList<double> lstPosY;
double CoorA = 0.0;
//double CoorY;


int bg=60;


int getCoordX(double coordenada){
	coordenada = coordenada + 86;
	int nuevacoordenada = 0;
	nuevacoordenada = coordenada * (pixelesX / 4);

	return nuevacoordenada;
}

int getCoordY(double coordenada){
	coordenada = coordenada - 8;
	int nuevacoordenada = 0;
	nuevacoordenada = coordenada * (pixelesY / 4);

	return nuevacoordenada;
}

class Grupo : public Fl_Group {
public:
     Grupo(int X,int Y,int W,int H,const char*L=0) : Fl_Group(X,Y,W,H,L) {
//		color(Fl_Color(40));

     }




	void dibujarRect(int begin_x, int begin_y,int end_x, int end_y) {
		static boolean flag;

		if (flag==false){
			fl_color(60);
			flag=true;
		}else{
			fl_color(bg);
			flag=false;
		}


		int x1 = begin_x + x();
		int y1 = begin_y + y();

		int w = Fl::event_x()-x1;
		int h = Fl::event_y()-y1;

		fl_rect (x1 , y1, w, h);



	}

	void dibujarLinea( int begin_x, int begin_y,int end_x, int end_y ){

		begin_x = begin_x + x();
		begin_y = begin_y + y();

		end_x = end_x + x();
		end_y = end_y + y();

		fl_line(begin_x, begin_y, end_x, end_y);


	}


	void draw() {
		//Draw something


		Fl_Group::draw();
     }

	void dibujarMapa(){
			static double coordenadas[4] = { 0, 0 , 0, 0  };
			int limite = 0;
			int x1,y1,x2,y2;
			lstPosX.moveToStart();


			for ( int i=0; i < lstPosX.length(); i++){
				if ( i != lstPosX.length()-1 ){
					if ( limite <=3 ){
						coordenadas[limite] = lstPosX.getValue();
					}else{
						dibujarLinea( getCoordX(coordenadas[3]), getCoordY(coordenadas[2]), getCoordX(coordenadas[1]), getCoordY(coordenadas[0]) );
						draw();
						cout<<" a "<<coordenadas[0]<<" b "<<coordenadas[1]<<" c "<<coordenadas[2]<<" d "<<coordenadas[3];
//						cout<<"indice2:"<<indice<<endl;
//						cout<<"Coordenadas"<<indice<<" _"<<coordenadas[indice]<<endl;
						limite = 0;
						coordenadas[limite] = lstPosX.getValue();

					}
				}
				limite++;
				lstPosX.next();


			}
	}

     int handle(int e) {
		static int coordenada[2] = { 0, 0 };
     	int x1 = 0;
     	int y1 = 0;

        switch(e) {
            case FL_PUSH:

				dibujarMapa();
//				draw();
				x1 = Fl::event_x() - x();
				y1 = Fl::event_y() - y();

				cout<<"Push x: "<< x1 <<" y: "<< y1 <<endl;

				cout<< Fl::event_is_click()<<endl;
				coordenada[0] = Fl::event_x() - x();
				coordenada[1] = Fl::event_y() - y();

//				dibujarLinea(getCoordX(-84.0471),getCoordY(9.9804),10,10);

                break;
            case FL_HIDE:       // valuator goes away
            case FL_RELEASE:    // release mouse

            	x1 = Fl::event_x() - x();
				y1 = Fl::event_y() - y();

            	if ( Fl::event_is_click() == 0){
						cout<<"El mouse se mantuvo presionado"<<endl;
						cout<<"Coordenada X"<< coordenada[0]<<endl;
						cout<<"Coordenada Y"<< coordenada[1]<<endl;

						dibujarRect(coordenada[0], coordenada[1], x1, y1);

            	}

				cout<<"RELEASE x: "<< x1 <<" y: "<< y1 <<endl;


            	break;
            case FL_LEAVE:      // leave focus
                //cout<<"Leave"<<endl;
//                cout<<"Leave x: "<<Fl::event_x()<<" y: "<<Fl::event_y()<<endl;
                break;
			case FL_ENTER:
//				cout<<"Enter x: "<<Fl::event_x()<<" y: "<<Fl::event_y()<<endl;
//				cout<<"Enter"<<endl;
				break;
			case FL_MOVE:
				cout<<"Move"<<endl;
				break;
			case FL_DRAG:
				cout<<"Enterraro"<<Fl::event_state()<<endl;
				break;
        }
        return(Fl_Widget::handle(e));
    }


};


class MyCanvas : public Fl_Widget {
public:
     MyCanvas(int X,int Y,int W,int H,const char*L=0) : Fl_Widget(X,Y,W,H,L) {
     }
     void draw() {

         int x1=x(), y1=y();
         int x2=x()+w()-1, y2=y()+h()-1;   // so take these into account for our drawing coordinates
         fl_color(FL_BLUE);
         fl_line(x1,y1,x2,y2);
         fl_line(x1,y2,x2,y1);
         cout<<w();
     }



};




static void cb_btn(MyCanvas*, void*) {
  cout<<"Callback"<<endl;
}

Grupo *grupocanvas=(Grupo *)0;
MyCanvas *canvas =(MyCanvas *)0;

void llenarListas(){
	ifstream file("C:/Users/Kevin/Desktop/C++/p8/Mapas/CR_ADM.txt");
    string str;

    int contar=0;
    int inicio=0;




	while (getline ( file, str ,' ')){
		if (inicio == 0 ){
			cout<<"Tipo Geometria: "<<str<<endl;

		}else if (inicio == 1 ){
			cout<<"Cantidad elementos: "<<str<<endl;
		}else{

			cout<<"contar: "<<contar<<endl;

			if (str.length() > 6){
				CoorA = strtod( str.c_str(), NULL);
//				if ( CoorA  < 0 ){
					cout<<"Coordenada: "<<str<<endl;
					lstPosX.insert(CoorA);
					cout<<"CordA: "<<lstPosX.getValue()<<endl;
//				}else{
//					cout<<"Coordenada: "<<str<<endl;
//					lstPosY.insert(CoorA);
//					cout<<"CordA: "<<lstPosY.length()<<endl;
//				}

			}else{
				cout<<"Id: "<<str<<endl;
			}
			//cin>>i;

			contar++;
		}
		inicio++;




	}

}

int main(int argc, char **argv) {

	llenarListas();
  Fl_Window* w;
  { Fl_Window* o = new Fl_Window( 1024 , 700 );
    w = o;
    { Grupo* o = grupocanvas = new Grupo(25, 25, escalaX, escalaY, "grupocanvas");
      o->box(FL_THIN_UP_BOX);

//      canvas = new MyCanvas(50,50,50,50);
      { MyCanvas* o = canvas = new MyCanvas(25, 25, 680, 600);

        o->callback((Fl_Callback*)cb_btn);
      }
      o->end();
    }
    o->end();
  }
  w->resizable(w);

  w->show(argc, argv);
  return Fl::run();
}
