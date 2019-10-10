import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {

      /*
      * Archivo creado en video 72 
      * Proposito : 
      */
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: Text('Cards'),
          ),
        body: ListView(
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                    _cardTipo1()
              ],          
        ) ,//Como queremos crear muchas tarjetas creamos un ListView
      );
    }

    Widget _cardTipo1(){

      return Card(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon( Icons.photo_album, color:Colors.blue ),
                title: Text('Soy el Titulo de esta tarjeta'),
                subtitle: Text('esta es una descripcion qued eadohb loarmiyagdivoebv9abv iadhvjadvoa fadovaodbqkefo oais  eafub as afh  ahadf'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    child:Text('Cancelar') ,
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text('Aceptar'),
                    onPressed: (){},
                  )
                
                ],
              )

            ],
          ),

      );

    }


}