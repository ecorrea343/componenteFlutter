import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  /*
  * Cambios realziados en el video 78 en esta pagina

   */
  //variables de estilo definidas 
  double _width  = 50.0;
  double _height = 50.0;
  Color  _color  = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),

      ),
      body: Center(
        child: AnimatedContainer( // cambiar el elemento de Container a AnimatedContainer y agregar la caracteristica obligada de 'duration'
            duration: Duration(seconds: 1),//caracteristica Obligada de AnimatedContainer
            curve: Curves.fastOutSlowIn, // Elemento mas elegante de animacion incorporada de Flutter para los AnimatedContainer.
            width  : _width,
            height : _height,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color
            ),
        ),

      ),
      floatingActionButton: FloatingActionButton (
          child: Icon(Icons.play_arrow),
          onPressed: _cambiarForm,
      ),
    );
  }

  void _cambiarForm(){
        //Se puede ocupar asi p como esta abajo 
      // _width   += 200.0;
      // _height  += 200.0;
      // _color   = Colors.black;

      final random = Random();
      setState(() { //para volver a redibujar la app
        
            //Como cambiar a elementos random en la vista de animated COntainer video 78
       _width   = random.nextInt(300).toDouble();
       _height  = random.nextInt(300).toDouble();
       _color   = Color.fromRGBO(
         random.nextInt(255),
         random.nextInt(255),
         random.nextInt(255),
         1);

         _borderRadius = BorderRadius.circular( random.nextInt(100).toDouble() );// animar conteneidor lso border


      });

  }
}