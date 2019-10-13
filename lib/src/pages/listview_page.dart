import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {


  ScrollController _scrollController = new ScrollController();
 //m en el video 87
  List<int> _listanumeros = new List(); //[10,23,38,42,53];
  int _ultimoItem = 0;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     _agregar10();

     _scrollController.addListener((){

       if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
         _agregar10();
       }

       print('Scroll!!!');

     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: _crearLista(),
    );
  }
  //elemenbto modificado en el video 86 
  Widget _crearLista(){

    return ListView.builder(
        controller: _scrollController,//elemento agregado en video 87
        itemCount: _listanumeros.length,
        itemBuilder: (BuildContext context , int index){

            final imagen = _listanumeros[index];

          return FadeInImage(

            image: NetworkImage('https://picsum.photos/id/1/600/500/?image=$imagen'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          
          );

        },


    );
  }
  //elemento creado en el video 87 Infinity Scrolling
  void _agregar10(){

    for (var i = 1; i < 10; i++) {
      _ultimoItem++;
      _listanumeros.add( _ultimoItem);
    }
    setState(() {
      
    });

  }
}