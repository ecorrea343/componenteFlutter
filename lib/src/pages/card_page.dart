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
                    _cardTipo1(),
                    SizedBox(
                        height: 30.0,
                    ),
                    _cardTipo2()
              ],          
        ) ,//Como queremos crear muchas tarjetas creamos un ListView
      );
    }

    Widget _cardTipo1(){

      return Card(
          elevation: 5.0, // para crear sombra a los lados
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)), //es para editar las puntas o bordes del card
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
   /*
   *   Extrato de codigo de el Video 73 Image y FadeIn Image 
   * 
   *  */
    Widget _cardTipo2(){
        
        final card = Card(
          child: Column(
            children: <Widget>[
              
             FadeInImage(
                image: NetworkImage('https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'), //descargar una imagen de una url
                placeholder: AssetImage('assets/jar-loading.gif'),
                fadeInDuration: Duration( milliseconds: 200 ),
                height: 300.0,
                fit: BoxFit.cover,
             ),
              
              
              // Image(
              //   image: NetworkImage('https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'), //descargar una imagen de una url
              // ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Este es un mensaje'),
              )
            ],
          ),
        );

        return Container(
         
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.red

          ),
        
            child: ClipRect(
            //borderRadius: BorderRadius.circular(20.0),
            child: card,
            
          ),
        );

    }

}