#include <iostream>
#include <string>
#include <sstream>
#include <stack>
#include <stdio.h>
#include <fstream>
using namespace std;


class SplayTree {
    class Nodo {
    public:
        Nodo* hijoIzq;
        Nodo* hijoDer;
        Nodo* padre;
        string elemento;
        string simbolo;
        static Nodo* Nodo_MAKE(const string& elem){
            Nodo* N = new Nodo();
            N->elemento = elem;
            return N;
        }

    };




    public:
        string codificacion;
        Nodo* raiz;
        SplayTree() {raiz=NULL;}
        SplayTree* ST_MAKE(){
            SplayTree* T = new SplayTree();
            return T;
        }

        void ST_INSERT (SplayTree* T, string elem){
            Nodo* z = raiz;
            Nodo* p = NULL;

            while( z != NULL ){
                p = z;
                if( z->elemento < elem ) { z = z->hijoDer; }
                else { z = z->hijoIzq; }
            }

            z = Nodo::Nodo_MAKE ( elem );
            z->padre = p;

            if( p == NULL ) { raiz = z; }
            else if ( p->elemento < z->elemento ) { p->hijoDer = z; }
            else { p->hijoIzq = z; }

            ST_SPLAY ( T,z );

        }

        void ST_SPLAY ( SplayTree* T, Nodo* x ){

            while ( x->padre != NULL ){
                if( x->padre->padre == NULL ) {
                    if( x->padre->hijoIzq == x ) { ST_RIGHT_ROTATION( T, x->padre ); }
                    else { ST_LEFT_ROTATION( T, x->padre ); }
                } else if( x->padre->hijoIzq == x && x->padre->padre->hijoIzq == x->padre ) {
                    ST_RIGHT_ROTATION(T, x->padre->padre );
                    ST_RIGHT_ROTATION(T, x->padre );
                  } else if( x->padre->hijoDer == x && x->padre->padre->hijoDer == x->padre ) {
                      ST_LEFT_ROTATION(T, x->padre->padre );
                      ST_LEFT_ROTATION(T, x->padre );
                  } else if( x->padre->hijoIzq == x && x->padre->padre->hijoDer == x->padre ) {
                    ST_RIGHT_ROTATION(T, x->padre );
                    ST_LEFT_ROTATION(T, x->padre );
                  } else {
                      ST_LEFT_ROTATION(T, x->padre );
                      ST_RIGHT_ROTATION(T, x->padre );
                  }
            }

        }

        void ST_LEFT_ROTATION ( SplayTree* T, Nodo* x ){
            Nodo* y = x->hijoDer;
            if( y != NULL) {
              x->hijoDer = y->hijoIzq;
              if( y->hijoIzq != NULL ) { y->hijoIzq->padre = x; }
              y->padre = x->padre;
            }

            if( x->padre == NULL ){
                raiz = y;
            }
            else if( x == x->padre->hijoIzq ) {
                x->padre->hijoIzq = y;
            }
            else {
                x->padre->hijoDer = y;
            }
            if(y != NULL) { y->hijoIzq = x; }
            x->padre = y;

        }

        void ST_RIGHT_ROTATION ( SplayTree* T, Nodo* x ){
            Nodo* y = x->hijoIzq;
            if(y != NULL) {

              x->hijoIzq = y->hijoDer;
              if( y->hijoDer != NULL ) { y->hijoDer->padre = x; }
              y->padre = x->padre;
            }
            if( x->padre ==NULL ) { raiz = y; }
            else if( x == x->padre->hijoIzq )  { x->padre->hijoIzq = y; }
            else { x->padre->hijoDer = y; }
            if(y != NULL) { y->hijoDer = x; }
            x->padre = y;
        }


        void preorder (Nodo* root){
            Nodo* current = root;
            Nodo* previous = NULL;

            while (current) {
                if (previous == current->padre) { // Traversing down the tree.
                    previous = current;
                    if (current->hijoIzq) {
                        current = current->hijoIzq;
                    } else {


                        if (isInner(current)){
                            if (current->hijoIzq == NULL){
                                codificacion.append("/");
                                codificacion.append(current->elemento);
                                codificacion.append("'");
                            }else{
                                codificacion.append(current->elemento);

                            }
                        }

                        if (!isInner(current)){

                            codificacion.append(current->elemento);
                            codificacion.append("//");


                        }

                        if (current->hijoDer)
                            current = current->hijoDer;
                        else
                            current = current->padre;

                    }
                } else if (previous == current->hijoIzq) { // Traversing up the tree from the left.
                    previous = current;
                    codificacion.append(current->elemento);
                    codificacion.append("'");
                    if (current->hijoDer == NULL && current->hijoIzq != NULL){
                        codificacion.append("/");

                    }
                    if (current->hijoDer)
                        current = current->hijoDer;
                    else
                        current = current->padre;

                } else if (previous == current->hijoDer) { // Traversing up the tree from the right.
                    previous = current;
                    current = current->padre;
                }
            }



        }

        bool isInner(Nodo* nodo){
            if (nodo->hijoIzq != NULL) {
                return true;
            }else if (nodo->hijoDer != NULL) {
                return true;
            }else{
                return false;
            }

        }






};



int main(){
    SplayTree* arbol = new SplayTree();

    arbol->ST_MAKE();
//    arbol->ST_INSERT(arbol, "20");
//    arbol->ST_INSERT(arbol, "7");
//    arbol->ST_INSERT(arbol, "3");
//    arbol->ST_INSERT(arbol, "10");
//    arbol->ST_INSERT(arbol, "18");
//    arbol->ST_INSERT(arbol, "5");
//    arbol->ST_INSERT(arbol, "8");
//    arbol->ST_INSERT(arbol, "15");
//    arbol->ST_INSERT(arbol, "6");
//    arbol->ST_INSERT(arbol, "9");

    string line;
    ifstream myfile ("ciudades.txt");
    if (myfile.is_open())
    {
        while ( getline (myfile,line) )
        {

          arbol->ST_INSERT(arbol, line);
        }
        myfile.close();
    }

    else cout << "Unable to open file";

    arbol->preorder(arbol->raiz);
    cout<<arbol->codificacion;

    ofstream myfile2 ("ordenado.txt");
    if (myfile2.is_open())
    {
        myfile2 << arbol->codificacion;
        myfile2.close();
    }
    else cout << "Unable to open file";


}
