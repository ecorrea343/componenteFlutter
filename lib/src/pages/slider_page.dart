import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}
/*
 * aRCHIVO CREADO EN EL VIDEO 84 Slider
 */
class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
      
    );
  }
  Widget _crearSlider(){

      return Slider(

        activeColor: Colors.indigoAccent,
        label: 'Tamaño de Slider',
        //divisions : 20,
        value: _valorSlider,
        min: 10.0,
        max: 400.0,
        onChanged:(_bloquearCheck) ? null : //Este moficacon se hizo en el video 85 , es como un IF pero simplificado.
        
         (valor){

          setState(() {
             _valorSlider = valor;
          });
        
        },
        

      );

  }

  Widget _crearImagen(){

      return Image(
         image: NetworkImage('https://p7.hiclipart.com/preview/190/624/27/injustice-2-injustice-gods-among-us-batman-superman-robin-batman-png.jpg'),
         width: _valorSlider,
         fit: BoxFit.contain,
         );
     
  }

  Widget _crearCheckBox(){ //Modificacion hecha en el video 85 de checkbox y switches

    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (valor){
    //     setState(() {
    //       _bloquearCheck = valor ;
    //     });
    //   },
    // );

      return CheckboxListTile(
       title: Text('Bloquear Slider'), 
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor ;
        });
      },


      );

  }
  Widget _crearSwitch(){

       return SwitchListTile(
       title: Text('Bloquear Slider'), 
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor ;
        });
      },


      );
  }

}