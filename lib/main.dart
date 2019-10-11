import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


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
         localizationsDelegates: [
            // ... app-specific localization delegate[s] here
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
           supportedLocales: [
                const Locale('en','US'), // English
                const Locale('es','ES'), // Español
                
                // ... other locales the app supports
              ],
       
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

