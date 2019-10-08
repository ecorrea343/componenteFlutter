import 'package:componentes/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Bienvenido'),
        ),
        body: _lista() ,



    );
  }

  Widget _lista(){

     // print(menuProvider.opciones);

      // menuProvider.cargarData().then( (opciones) {
      //   print('_lista');
      //   print(opciones);
      // });

      return FutureBuilder(

        //El future esta enlazado a lo 
        //que nosotros deseamos esperar en este caso cargarData().
        future: menuProvider.cargarData(),
        initialData: [],
        builder: ( context , AsyncSnapshot<List<dynamic>> snapshot){

            print(snapshot.data);
               return ListView(
                   children: _listaItems( snapshot.data ),
                );
      

        },

      );


    // return ListView(
    //   children: _listaItems(),
    //       );
    //     
    }
      

  List<Widget> _listaItems(List<dynamic> data) {

    final List<Widget> opciones = [];

    data.forEach( (opt) {

        final widgetTemp = ListTile(
          title: Text(opt ['texto']),
          leading: Icon(Icons.account_circle ,  color: Colors.blue ),
          trailing: Icon(Icons.keyboard_arrow_right ,  color: Colors.blue),
          onTap: (){

          },
        );
            opciones..add(widgetTemp)
                    ..add(Divider() );
    });
   
   return opciones;
  }

}