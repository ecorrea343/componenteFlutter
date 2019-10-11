import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre    = '';
  String _email     = '';
  //String _password  = ''; 
  String _fecha     = '';

  String _opcionSeleccionada = 'Volar';

  List <String> _poderes = ['Volar','Rayos X' ,'Super Aliento'];

  TextEditingController _inputFieldController = new TextEditingController();


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
          _crearFecha(context ),
          Divider(),
          _crearDropdown(), //Modificacion creada en el video numero 83
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
            trailing: Text(_opcionSeleccionada),
            
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
            //onChanged: (valor) => setState(() {  _password = valor; }) 
        );
    }

    //Metodo creado en el video numepr 81

    Widget _crearFecha(BuildContext context){

        return TextField(
          //autofocus: true,
          //obscureText: true,
          enableInteractiveSelection: false,
          controller: _inputFieldController,
          decoration: InputDecoration(
              border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(20.0),

              ),
              //counter: Text('Letra ${_nombre.length}'),
              hintText: 'Fecha de Nacimiento',
              labelText: 'Fecha de Nacimiento',
              //helperText: 'Solo es el nombre ',
              suffixIcon: Icon(Icons.perm_contact_calendar),
              icon: Icon(Icons.calendar_today)
          ),
            //onChanged: (valor) => setState(() {  _fecha = valor; }) 
            onTap: (){

                FocusScope.of(context).requestFocus(new FocusNode());
                _selectDate( context );

            },
        
        
        
        );

    }
  //Metodo hecho en el video 81 DatePicker
_selectDate (BuildContext context) async {

    DateTime picked = await showDatePicker(

         context     : context,
         initialDate : new DateTime.now(),
         firstDate   : new DateTime(2019),
         lastDate    : new DateTime(2025),
         locale: Locale('es','ES'),    //cambios de el video numero 82 Cambiar el idioma de pICKER

    );

    if ( picked != null) {

      setState(() {
        _fecha = picked.toString();
        _inputFieldController.text = _fecha;
      }); 
    
    }

    }
    
    //modificacion creada en el video 83 - DropDown y DropDownMenu
    List<DropdownMenuItem<String>> getOpcionesDropdown (){

        List<DropdownMenuItem<String>> lista = new List();

        _poderes.forEach((poder){
            
            lista.add( DropdownMenuItem(
                child: Text(poder),
                value: poder,
            ));

        });
        return lista;
    }
//modificacion de el video numero 83 de Dropdown y DropdownMenuItem
    Widget _crearDropdown(){
      
        return DropdownButton(
          value: _opcionSeleccionada,
            items: getOpcionesDropdown(),
            onChanged: (opt){
              setState(() {
                _opcionSeleccionada = opt;
              });
            },
        );
    }
}