// generated by Fast Light User Interface Designer (fluid) version 1.0302

#ifndef preferences_h
#define preferences_h
#include <FL/Fl.H>
#include <FL/Fl_Preferences.H>
#include <stdio.h>
extern void readPrefs(); 
extern void writePrefs(); 
#include <FL/Fl_Double_Window.H>
extern Fl_Double_Window *myWindow;
#include <FL/Fl_Button.H>
#include <FL/Fl_Group.H>
#include <FL/Fl_Input.H>
extern Fl_Input *wAlarm;
#include <FL/Fl_Choice.H>
extern Fl_Choice *wAmPm;
extern Fl_Choice *wWear;
#include <FL/Fl_Round_Button.H>
extern Fl_Round_Button *wLeft;
extern Fl_Round_Button *wRight;
#include <FL/Fl_Box.H>
#include <FL/Fl_Check_Button.H>
extern Fl_Check_Button *wShower;
extern Fl_Check_Button *wShave;
extern Fl_Check_Button *wBrush;
extern Fl_Choice *wDrink;
extern Fl_Check_Button *wMilk;
extern Fl_Choice *wBread;
extern Fl_Check_Button *wButter;
#include <FL/Fl_Int_Input.H>
extern Fl_Int_Input *wEggs;
#include <FL/Fl_Value_Slider.H>
extern Fl_Value_Slider *wMinutes;
extern Fl_Input *wPaper;
extern Fl_Menu_Item menu_wAmPm[];
extern Fl_Menu_Item menu_wWear[];
extern Fl_Menu_Item menu_wDrink[];
extern Fl_Menu_Item menu_wBread[];
void readPrefs();
void writePrefs();
#endif
