import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/home_page.dart';

import 'package:flutter/material.dart';
   /*
    *Archivo creado en el video  numero 70 
    *Proposito : Archivo creado para poder tener un orden de las rutas y tener el main.dart mas limpio de codigo innecesario 
    *solo llamando a este archivo con la funcion getApplicationRoutes()
    *
    * 

    */
    Map<String, WidgetBuilder>getApplicationRoutes(){

     return <String , WidgetBuilder> {
          '/'        : (BuildContext context) => HomePage(),
          'alert'    : (BuildContext context) => AlertPage(),
          'avatar'   : (BuildContext context) => AvatarPage(),
          'card'     : (BuildContext context) => CardPage(),
          'animatedContainer' :(BuildContext context) => AnimatedContainerPage(),
     };
}