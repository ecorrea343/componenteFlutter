import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

    
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(

            title: Text('Alert Page'),

        ),
        body: Center(
          child: RaisedButton(
            child: Text('Mostrar Alerta'),
            color: Colors.blue,
            textColor: Colors.white,
            shape: StadiumBorder(),
            onPressed: () => _mostrarAlert(context),

          ),
        ),
        floatingActionButton: FloatingActionButton( //Creando un boton en alertpage.         
          child: Icon(Icons.add_location),           //dando un icono .
            onPressed: (){                           //Funcion de al ser presionado.
            Navigator.pop(context);                 //el Navigator.pop permite viajar atras colocandole en este caso el "context"
          },

        ),
      ) ;
    }

    void _mostrarAlert(BuildContext context){

      showDialog(
        context: context,
        barrierDismissible: false, //comportamiento para cerrar una ventana apretando afuera de ella
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            title: Text('Titulo'),
            content:Column(  //Text ('Contenido'),
              mainAxisSize: MainAxisSize.min, //este valor indica que el contenido interno indica el tamaño de la Alert
              children: <Widget>[
                  Text('Este es el contenido de la caja alerta '),
                  FlutterLogo(
                    size: 100.0
                  )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed:() => Navigator.of(context).pop() , //forma tradicional
              ),
              FlatButton(
                child: Text('Aceptar'),
                onPressed:() {
                  //segunda forma traicional
                   Navigator.of(context).pop();
                   } ,
              )
            ],
          );
        }//funcion que se dedica a crear el popap
      );
    }
}