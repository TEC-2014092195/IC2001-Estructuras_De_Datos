//============================================================================
// Archivo    : Tarea1_Kevin_Hernandez.cpp
// Autor      : Kevin Hernandez Rostran
// Curso      : Estructuras de Datos - Instituto Tecnológico de Costa Rica
// Descripcion: Programa que simula la solucion de las torres de Hanoi de 8 discos
//============================================================================
#include <FL/Fl.H>
#include <FL/Fl_Window.H>
#include <FL/Fl_Button.H>
#include <iostream>
#include <windows.h> //Para la funcion Sleep

using namespace std;

void accion( Fl_Widget*, void* );

Fl_Button *disk1;
Fl_Button *disk2;
Fl_Button *disk3;
Fl_Button *disk4;
Fl_Button *disk5;
Fl_Button *disk6;
Fl_Button *disk7;
Fl_Button *disk8;
Fl_Window *window;
Fl_Button *resolver;
Fl_Button *reset;

int lenpalos[]={8,0,0};
int arrayPosY[] = {320,290,260,230,200,170,140,110};




int pos_disco(int disco){ //Obtiene la posicion en X dependiendo del disco
    switch(disco){
    case 1:
        return 100;
        break;
    case 2:
        return 90;
        break;
    case 3:
        return 80;
        break;
    case 4:
        return 70;
        break;
    case 5:
        return 60;
        break;
    case 6:
        return 50;
        break;
    case 7:
        return 40;
        break;
    case 8:
        return 30;
        break;
    default:
        break;

    }


}

int elegir_palo(int palo, int disco){ //Seleccion del palo-destino del disco a mover
    int x;
    if (palo == 1){
        x = pos_disco(disco);
        return x;
    }else

    if (palo == 2){
        x = pos_disco(disco);
        x += 320;
        return x;
    }else

    if (palo == 3){
        x = pos_disco(disco);
        x += 645;
        return x;
    }


}
//int lenpalos[]={8,0,0};
//int arrayPosY[] = {320,290,260,230,200,170,140,110};

int obtenerPosY(int palo_actual,int palo_destino){ //Obtiene Posicion en Y
    int indiceY;
    int y;
    indiceY = 0;
    y=0;

    lenpalos[palo_actual - 1] -= 1; //Al palo en que estaba el disco le resta 1
    lenpalos[palo_destino - 1] += 1; //Al palo-destino del disco le suma 1
    indiceY = lenpalos[palo_destino - 1]; //asigna a indiceY la posicion a la que iria para el destino
    y = arrayPosY[indiceY - 1]; //Obtiene la posicion-destino

    return y;

}

void movDisco(int disco,int x,int y){ //Selecciona el disco a mover y su direccion
    switch(disco){
        case 1:
            disk1 ->position(x,y);
            break;
        case 2:
            disk2 ->position(x,y);
            break;
        case 3:
            disk3 ->position(x,y);
            break;
        case 4:
            disk4 ->position(x,y);
            break;
        case 5:
            disk5 ->position(x,y);
            break;
        case 6:
            disk6 ->position(x,y);
            break;
        case 7:
            disk7 ->position(x,y);
            break;
        case 8:
            disk8 ->position(x,y);
            break;
        default:
            break;
    }
}
int paso;

void hanoi(int num,int Origen, int Destino, int Auxiliar){ //Algoritmo tomado de -> http://es.wikipedia.org/wiki/Torres_de_Han%C3%B3i
    paso+=1;
    cout<<"Paso: "<<paso<<endl;
    window ->redraw();
    int x;
    int y;
    x=0;
    y=0;
    if(num==1)
    {
        cout<<"Mover el disco "<<num<<" desde palo "<<Origen<<" al  palo "<<Destino<<endl;
        x=elegir_palo(Destino,num); //(palo , disco)
        y=obtenerPosY(Origen,Destino); //(p_actual , p_destino)
        movDisco(num,x,y);
        Fl::flush(); //Forza la actualizacion de todos
        Sleep(600); //Tiempo de espera en milisegundos


    }
    else
    {


        hanoi(num-1,Origen,Auxiliar,Destino);
        x=elegir_palo(Destino,num);
        y=obtenerPosY(Origen,Destino);
        movDisco(num,x,y);
        window->redraw();//Actualiza ventana
        Fl::flush(); //Forza la actualizacion de todos
        cout<<"Mover el disco "<<num<<" desde palo "<<Origen<<" al  palo "<<Destino<<endl;
        Sleep(600); //Tiempo de espera en milisegundos

        hanoi(num-1,Auxiliar,Destino,Origen);
    }
}

void reiniciar(Fl_Widget* obj, void*){ //Reiniciar las posiciones de botones y
    int x;                             // el arreglo lenpalos para las posiciones en Y
    int y;

    lenpalos[0]=8;
    lenpalos[1]=0;
    lenpalos[2]=0;

    x=pos_disco(1);
    y=arrayPosY[7]; //Obtiene del arreglo {320,290,260,230,200,170,140,110}
    disk1->position(x,y);

    x=pos_disco(2);
    y=arrayPosY[6];
    disk2->position(x,y);

    x=pos_disco(3);
    y=arrayPosY[5];
    disk3->position(x,y);

    x=pos_disco(4);
    y=arrayPosY[4];
    disk4->position(x,y);

    x=pos_disco(5);
    y=arrayPosY[3];
    disk5->position(x,y);

    x=pos_disco(6);
    y=arrayPosY[2];
    disk6->position(x,y);

    x=pos_disco(7);
    y=arrayPosY[1];
    disk7->position(x,y);

    x=pos_disco(8);
    y=arrayPosY[0];
    disk8->position(x,y);

    resolver->label("Resolver"); //Cambia el label para que sirva de bandera y asi reiniciar
    resolver->color(FL_WHITE);
    resolver->labelcolor(FL_BLACK);

    obj-> parent()-> redraw(); //Aplica un redraw() a la ventana que es el parent() del obj

}





void accion( Fl_Widget* obj , void*){

    if (obj->label() != "Resuelto"){
      obj -> label( "Resolviendo" );
      obj -> color(FL_GREEN);
      obj-> parent()-> redraw();


      hanoi(8,1,3,2); //hanoi(n,origen,destino, auxiliar)

      obj->color(FL_DARK_CYAN);
      obj->labelcolor(FL_WHITE);
      obj->label("Resuelto"); //Cambia para que no aplique ninguna opcion al presionar de nuevo
      obj-> parent()-> redraw();
    }

}





int main (int argc, char ** argv)
{




    window = new Fl_Window (600+300, 360+180);
    window->color(FL_DARK_CYAN);

    window->label("Torres de Hanoi");

    Fl_Button *palo1 = new Fl_Button(123,100,15,250);
    palo1->color(FL_DARK_YELLOW);

    Fl_Button *palo2 = new Fl_Button(123+320,100,15,250);
    palo2->color(FL_DARK_YELLOW);

    Fl_Button *palo3 = new Fl_Button(123+645,100,15,250);
    palo3->color(FL_DARK_YELLOW);


    disk1 = new Fl_Button(100, 110, 60, 30, "Disco 1"); //Inicio (X,Y,W,H)
    disk1 -> color(FL_RED);
    disk1 ->labelcolor(FL_WHITE);


    disk2 = new Fl_Button(90, 140, 80, 30, "Disco 2"); //Inicio (X,Y,W,H)
    disk2 -> color(FL_DARK_BLUE);
    disk2 -> labelcolor(FL_WHITE);

    disk3 = new Fl_Button(80, 170, 100, 30, "Disco 3"); //Inicio (X,Y,W,H)
    disk3 -> color(FL_DARK_GREEN);
    disk3 -> labelcolor(FL_WHITE);

    disk4 = new Fl_Button(70, 200, 120, 30, "Disco 4"); //Inicio (X,Y,W,H)
    disk4 -> color(FL_DARK_MAGENTA);
    disk4 -> labelcolor(FL_WHITE);

    disk5 = new Fl_Button(60, 230, 140, 30, "Disco 5"); //Inicio (X,Y,W,H)
    disk5 -> color(FL_DARK_CYAN);
    disk5 -> labelcolor(FL_WHITE);

    disk6 = new Fl_Button(50, 260, 160, 30, "Disco 6"); //Inicio (X,Y,W,H)
    disk6 -> color(FL_DARK_YELLOW);
    disk6 -> labelcolor(FL_WHITE);

    disk7 = new Fl_Button(40, 290, 180, 30, "Disco 7"); //Inicio (X,Y,W,H)
    disk7 -> color(FL_DARK_RED);
    disk7 -> labelcolor(FL_WHITE);


    disk8 = new Fl_Button(30, 320, 200, 30, "Disco 8"); //Inicio (X,Y,W,H)
    disk8 -> color(FL_BLACK);
    disk8 -> labelcolor(FL_WHITE);


    resolver = new Fl_Button(300, 450, 100, 30, "Resolver"); //Inicio
    resolver -> color(FL_WHITE);

    resolver -> callback(accion);

    reset = new Fl_Button(500, 450, 100, 30, "Reiniciar"); //Inicio
    reset -> color(FL_WHITE);

    reset -> callback(reiniciar);




    window->end ();
    window->show (argc, argv);
    return(Fl::run());
}
