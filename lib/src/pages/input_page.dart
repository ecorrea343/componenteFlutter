import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body:ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0 , vertical: 20.0),
        children: <Widget>[
          _crearInput(),
                  ],
                ) ,
              );
            }
          
    Widget  _crearInput() { //creando Inputs personalziado en el video 78

        return TextField(
          //autofocus: true,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
              border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(20.0),

              ),
              counter: Text('Letra 0'),
              hintText: 'Nombre de la persona',
              labelText: 'Nombre',
              helperText: 'Solo es el nombre ',
              suffixIcon: Icon(Icons.accessibility),
              icon: Icon(Icons.account_circle)
          ),
          onChanged: (valor){
              _nombre = valor;
              print(_nombre);
          },
        );

    }
}