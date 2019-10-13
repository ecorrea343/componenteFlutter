import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  List<int> _listanumeros = [10,23,38,42,53];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: _crearLista(),
    );
  }
  Widget _crearLista(){

    return ListView.builder(

        itemCount: _listanumeros.length,
        itemBuilder: (BuildContext context , int index){

            final imagen = _listanumeros[index];

          return FadeInImage(
            image: NetworkImage('https://picsum.photos/id/866/500/300/?image=$index'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          );

        },


    );
  }
}