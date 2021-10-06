// generated by Fast Light User Interface Designer (fluid) version 1.0302

#include "C:/dev/fltk-1.3.2/test/preferences.h"
#include <stdlib.h>
#include <FL/filename.H>
#include <FL/fl_ask.H>
void readPrefs(); 
void writePrefs(); 
static const char *project = "fltk.org"; 
static const char *application = "test/preferences"; 

static void closeWindowCB( Fl_Widget*, void* ) {
  Fl::delete_widget(myWindow);
}

static void saveAndCloseWindowCB( Fl_Widget*, void* ) {
  writePrefs();
  Fl::delete_widget(myWindow);
}

Fl_Double_Window *myWindow=(Fl_Double_Window *)0;

Fl_Input *wAlarm=(Fl_Input *)0;

Fl_Choice *wAmPm=(Fl_Choice *)0;

Fl_Menu_Item menu_wAmPm[] = {
 {"a.m.", 0,  0, 0, 0, FL_NORMAL_LABEL, 0, 14, 0},
 {"p.m.", 0,  0, 0, 0, FL_NORMAL_LABEL, 0, 14, 0},
 {0,0,0,0,0,0,0,0,0}
};

Fl_Choice *wWear=(Fl_Choice *)0;

Fl_Menu_Item menu_wWear[] = {
 {"shoes", 0,  0, 0, 0, FL_NORMAL_LABEL, 0, 14, 0},
 {"sandals", 0,  0, 0, 0, FL_NORMAL_LABEL, 0, 14, 0},
 {"flip flops", 0,  0, 0, 0, FL_NORMAL_LABEL, 0, 14, 0},
 {"bare foot", 0,  0, 0, 0, FL_NORMAL_LABEL, 0, 14, 0},
 {0,0,0,0,0,0,0,0,0}
};

Fl_Round_Button *wLeft=(Fl_Round_Button *)0;

Fl_Round_Button *wRight=(Fl_Round_Button *)0;

Fl_Check_Button *wShower=(Fl_Check_Button *)0;

Fl_Check_Button *wShave=(Fl_Check_Button *)0;

Fl_Check_Button *wBrush=(Fl_Check_Button *)0;

Fl_Choice *wDrink=(Fl_Choice *)0;

Fl_Menu_Item menu_wDrink[] = {
 {"coffee", 0,  0, 0, 0, FL_NORMAL_LABEL, 0, 14, 0},
 {"tea", 0,  0, 0, 0, FL_NORMAL_LABEL, 0, 14, 0},
 {"juice", 0,  0, 0, 0, FL_NORMAL_LABEL, 0, 14, 0},
 {0,0,0,0,0,0,0,0,0}
};

Fl_Check_Button *wMilk=(Fl_Check_Button *)0;

Fl_Choice *wBread=(Fl_Choice *)0;

Fl_Menu_Item menu_wBread[] = {
 {"wheat", 0,  0, 0, 0, FL_NORMAL_LABEL, 0, 14, 0},
 {"white", 0,  0, 0, 0, FL_NORMAL_LABEL, 0, 14, 0},
 {"rye", 0,  0, 0, 0, FL_NORMAL_LABEL, 0, 14, 0},
 {"sour doh", 0,  0, 0, 0, FL_NORMAL_LABEL, 0, 14, 0},
 {0,0,0,0,0,0,0,0,0}
};

Fl_Check_Button *wButter=(Fl_Check_Button *)0;

Fl_Int_Input *wEggs=(Fl_Int_Input *)0;

Fl_Value_Slider *wMinutes=(Fl_Value_Slider *)0;

Fl_Input *wPaper=(Fl_Input *)0;

int main(int argc, char **argv) {
  { myWindow = new Fl_Double_Window(298, 311, "My Preferences");
    myWindow->callback((Fl_Callback*)closeWindowCB);
    { Fl_Button* o = new Fl_Button(210, 275, 75, 25, "Cancel");
      o->callback((Fl_Callback*)closeWindowCB);
    } // Fl_Button* o
    { Fl_Button* o = new Fl_Button(125, 275, 75, 25, "OK");
      o->callback((Fl_Callback*)saveAndCloseWindowCB);
    } // Fl_Button* o
    { Fl_Group* o = new Fl_Group(20, 30, 115, 225, "Get Up:");
      o->box(FL_ENGRAVED_FRAME);
      o->align(Fl_Align(FL_ALIGN_TOP_LEFT));
      { wAlarm = new Fl_Input(25, 55, 45, 20, "Alarm at:");
        wAlarm->align(Fl_Align(FL_ALIGN_TOP_LEFT));
      } // Fl_Input* wAlarm
      { wAmPm = new Fl_Choice(75, 55, 55, 20);
        wAmPm->down_box(FL_BORDER_BOX);
        wAmPm->menu(menu_wAmPm);
      } // Fl_Choice* wAmPm
      { wWear = new Fl_Choice(25, 100, 105, 20, "Wear:");
        wWear->down_box(FL_BORDER_BOX);
        wWear->align(Fl_Align(FL_ALIGN_TOP_LEFT));
        wWear->menu(menu_wWear);
      } // Fl_Choice* wWear
      { Fl_Group* o = new Fl_Group(35, 120, 98, 60);
        { wLeft = new Fl_Round_Button(35, 120, 95, 25, "left side");
          wLeft->type(102);
          wLeft->down_box(FL_ROUND_DOWN_BOX);
        } // Fl_Round_Button* wLeft
        { wRight = new Fl_Round_Button(35, 140, 95, 25, "right side");
          wRight->type(102);
          wRight->down_box(FL_ROUND_DOWN_BOX);
        } // Fl_Round_Button* wRight
        { new Fl_Box(38, 160, 95, 20, "of the bed");
        } // Fl_Box* o
        o->end();
      } // Fl_Group* o
      { wShower = new Fl_Check_Button(25, 180, 105, 25, "shower");
        wShower->down_box(FL_DOWN_BOX);
      } // Fl_Check_Button* wShower
      { wShave = new Fl_Check_Button(25, 200, 105, 25, "shave");
        wShave->down_box(FL_DOWN_BOX);
      } // Fl_Check_Button* wShave
      { wBrush = new Fl_Check_Button(25, 220, 105, 25, "brush teeth");
        wBrush->down_box(FL_DOWN_BOX);
      } // Fl_Check_Button* wBrush
      o->end();
    } // Fl_Group* o
    { Fl_Group* o = new Fl_Group(160, 30, 115, 225, "Breakfast::");
      o->box(FL_ENGRAVED_FRAME);
      o->align(Fl_Align(FL_ALIGN_TOP_LEFT));
      { wDrink = new Fl_Choice(165, 50, 105, 20, "Drink:");
        wDrink->down_box(FL_BORDER_BOX);
        wDrink->align(Fl_Align(FL_ALIGN_TOP_LEFT));
        wDrink->menu(menu_wDrink);
      } // Fl_Choice* wDrink
      { wMilk = new Fl_Check_Button(170, 70, 100, 25, "with milk");
        wMilk->down_box(FL_DOWN_BOX);
      } // Fl_Check_Button* wMilk
      { wBread = new Fl_Choice(165, 110, 105, 20, "Bread:");
        wBread->down_box(FL_BORDER_BOX);
        wBread->align(Fl_Align(FL_ALIGN_TOP_LEFT));
        wBread->menu(menu_wBread);
      } // Fl_Choice* wBread
      { wButter = new Fl_Check_Button(170, 130, 100, 25, "with butter");
        wButter->down_box(FL_DOWN_BOX);
      } // Fl_Check_Button* wButter
      { wEggs = new Fl_Int_Input(165, 163, 30, 20, "eggs");
        wEggs->type(2);
        wEggs->align(Fl_Align(FL_ALIGN_RIGHT));
      } // Fl_Int_Input* wEggs
      { wMinutes = new Fl_Value_Slider(175, 185, 70, 20, "min.");
        wMinutes->type(1);
        wMinutes->minimum(2);
        wMinutes->maximum(6);
        wMinutes->step(0.01);
        wMinutes->value(3.1);
        wMinutes->align(Fl_Align(FL_ALIGN_RIGHT));
      } // Fl_Value_Slider* wMinutes
      { wPaper = new Fl_Input(165, 225, 105, 20, "Newspaper:");
        wPaper->align(Fl_Align(FL_ALIGN_TOP_LEFT));
      } // Fl_Input* wPaper
      o->end();
    } // Fl_Group* o
    myWindow->end();
  } // Fl_Double_Window* myWindow
  readPrefs();
  myWindow->show(argc, argv);
  return Fl::run();
}

void readPrefs() {
  int boolValue;
  int intValue;
  char buffer[80];
  double doubleValue;
  
  Fl_Preferences app( Fl_Preferences::USER, project, application );
  
    char path[ FL_PATH_MAX ];
    app.getUserdataPath( path, sizeof(path) );
  
    Fl_Preferences bed( app, "Bed" );
      bed.get( "alarm", buffer, "8:00", 79 );
      wAlarm->value( buffer );
  
      bed.get( "ampm", intValue, 0 );
      wAmPm->value( intValue );
  
      bed.get( "wear", intValue, 1 );
      wWear->value( intValue );
  
      int side;
      bed.get( "side", side, 2 );
      if ( side == 1 ) wLeft->value( 1 );
      if ( side == 2 ) wRight->value( 1 );
  
      int tasks;
      bed.get( "taskFlags", tasks, 0x05 );
      if ( tasks & 0x01 ) wShower->value( 1 );
      if ( tasks & 0x02 ) wShave->value( 1 );
      if ( tasks & 0x04 ) wBrush->value( 1 );
  
    Fl_Preferences eat( app, "Breakfast" );
  
      eat.get( "drink", intValue, 1 );
      wDrink->value( intValue );
  
      eat.get( "wMilk", boolValue, 0 );
      wMilk->value( boolValue );
  
      eat.get( "bread", intValue, 0 );
      wBread->value( intValue );
  
      eat.get( "wButter", boolValue, 1 );
      wButter->value( boolValue );
  
      eat.get( "nEggs", intValue, 2 );
      sprintf( buffer, "%d", intValue );
      wEggs->value( buffer );
  
      eat.get( "minutes", doubleValue, 3.2 );
      wMinutes->value( doubleValue );
  
      char *flexBuffer;
      eat.get( "newspaper", flexBuffer, "NY Tymes" );
      wPaper->value( flexBuffer );
      if ( flexBuffer ) free( flexBuffer );
  
      eat.get( "foo", buffer, "bar", 80 );
  
    /** sample code only:
    Fl_Preferences prev( app, "PreviousStarts" );
    {
      int i, n;
      prev.get( "n", n, 0 );
      for ( i=0; i<n; i++ )
        prev.get( Fl_Preferences::Name( i ), flexBuffer, "" );
    }
  
      unsigned int hex;
      eat.get( "binFoo", (void*)&hex, 0, 0, sizeof( unsigned int ) );
      void *data;
      eat.get( "binFoo2", data, 0, 0 );
    **/
}

void writePrefs() {
  Fl_Preferences app( Fl_Preferences::USER, project, application );
  
    Fl_Preferences bed( app, "Bed" );
  
      bed.set( "alarm", wAlarm->value() );
      bed.set( "ampm", wAmPm->value() );
  
      bed.set( "wear", wWear->value() );
  
      int side = 0;
      if ( wLeft->value() ) side = 1;
      if ( wRight->value() ) side = 2;
      bed.set( "side", side );
  
      int tasks = 0;
      if ( wShower->value() ) tasks |= 0x01;
      if ( wShave->value() ) tasks |= 0x02;
      if ( wBrush->value() ) tasks |= 0x04;
      bed.set( "taskFlags", tasks );
  
    Fl_Preferences eat( app, "Breakfast" );
  
      eat.set( "drink", wDrink->value() );
      eat.set( "wMilk", wMilk->value() );
      eat.set( "bread", wBread->value() );
      eat.set( "wButter", wButter->value() );
  
      eat.set( "nEggs", wEggs->value() );
      eat.set( "minutes", wMinutes->value() );
  
      eat.set( "newspaper", wPaper->value() );
  
      eat.set( "foo", "bar\nfly\rBackslash: \\ and bell: \007 and delete: \177\n" );
  
      eat.set( Fl_Preferences::Name( 3 ), "Test3" );
  
    /* sample: create a sub-sub-group */
    Fl_Preferences eatMore( eat, "More" );
  
      eatMore.set( "more", "stuff" );
  
    /* all the following searches should return 1 */
    int sum = 0;
    sum += app.groupExists( "Breakfast" ); /* find 'eat' relative to 'app' */
    sum += app.groupExists( "Breakfast/More" ); /* find 'eat.eatMore' relative to 'app' */
    sum += app.groupExists( "./Breakfast/More" ); /* find 'eat.eatMore' relative to Preferences */
    sum += eat.groupExists( "More" ); /* find 'eatMore' relative to 'eat' */
    sum += eat.groupExists( "./Breakfast/More" ); /* find 'eat.eatMore' relative to Preferences */
    sum += eat.groupExists( "." ); /* find myself ('eat') */
    sum += eat.groupExists( "./" ); /* find the topmost group ('app') */
    if ( sum != 7 )
      fl_message( "Assertion failed:\nNot all group entries were found!" );
  
    /* sample code only: */
    unsigned int hex = 0x2387efcd;
    eat.set( "binFoo", (void*)&hex, sizeof( unsigned int ) );
    eat.set( "binFoo2", (void*)&bed, 256 );
}
