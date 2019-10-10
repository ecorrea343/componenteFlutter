import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

    
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(

            title: Text('Alert Page'),

        ),
        floatingActionButton: FloatingActionButton( //Creando un boton en alertpage.         
          child: Icon(Icons.add_location),           //dando un icono .
            onPressed: (){                           //Funcion de al ser presionado.
            Navigator.pop(context);                 //el Navigator.pop permite viajar atras colocandole en este caso el "context"
          },

        ),
      ) ;
    }

}