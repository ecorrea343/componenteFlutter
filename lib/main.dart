import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';

// packages hechos
import 'package:flutter/material.dart';



 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,  
        //home: HomePage(),

       
        initialRoute: '/',
        routes: getApplicationRoutes(),
         //Rutas dinamicas con Nombre    vide0 70
        // routes: <String , WidgetBuilder>{
        //   '/'         : (BuildContext context) => HomePage(),
        //   '/alert'    : (BuildContext context) => AlertPage(),
        //   '/avatar'   : (BuildContext context) => AvatarPage(),

        
        //Rutas generalizadas dinamicamente y archivod e rutas independientes video 71
        onGenerateRoute: (RouteSettings settings ){

            print('ruta llamada ${settings.name} '); //Probar en el debug a que ruta esta llamando 

            return MaterialPageRoute(

              builder: (BuildContext context) => AlertPage()

            );

        },
             
    );
  }
}

