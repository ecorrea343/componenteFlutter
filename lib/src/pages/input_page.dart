import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre    = '';
  String _email     = '';
  String _password  = ''; 

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
          Divider(),
          _crearEmail(), //Modificaciones hecahs en el video 80
          Divider(),
          _crearPassword(),
          Divider(),
          _crearPersona(), //Modificaciones hechas en el video 79
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
              counter: Text('Letra ${_nombre.length}'),
              hintText: 'Nombre de la persona',
              labelText: 'Nombre',
              helperText: 'Solo es el nombre ',
              suffixIcon: Icon(Icons.accessibility),
              icon: Icon(Icons.account_circle)
          ),
          onChanged: (valor){

            setState(() {
               _nombre = valor;
            });  
          },
        );

    }

    //Metodo CREADO en el video numero 79

    Widget _crearPersona (){
        return ListTile(
            title: Text('Nombre es: $_nombre'),
            subtitle: Text('Email : $_email'),
            
        );
    }

    //metodo CREADO en el video numero 80
    Widget _crearEmail(){
      
      return TextField(
          //autofocus: true,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(20.0),

              ),
             // counter: Text('Letra ${_nombre.length}'),
              hintText: 'Email',
              labelText: 'Email',
             // helperText: 'Solo es el nombre ',
              suffixIcon: Icon(Icons.alternate_email),
              icon: Icon(Icons.email)
          ),
          onChanged: (valor) => setState(() {  _email = valor; })  
         
        );
    }

    Widget _crearPassword(){
      return TextField(
          //autofocus: true,
          obscureText: true,
          decoration: InputDecoration(
              border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(20.0),

              ),
              //counter: Text('Letra ${_nombre.length}'),
              hintText: 'Password',
              labelText: 'Password',
              //helperText: 'Solo es el nombre ',
              suffixIcon: Icon(Icons.lock_open),
              icon: Icon(Icons.lock)
          ),
            onChanged: (valor) => setState(() {  _password = valor; }) 
        );
    }
}