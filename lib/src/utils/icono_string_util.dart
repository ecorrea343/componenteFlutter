import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final _icon = <String, IconData>{


    'add_alert'     : Icons.add_alert,
    'accessibility' : Icons.accessibility,
    'folder_open'   : Icons.folder_open,
    'donut_large'   : Icons.donut_large,//modificacion de video 78
    'input'         : Icons.input,//modificacion de video 79


};


  Icon getIcon(String nombreIcono){

      return Icon (_icon[nombreIcono] , color: Colors.blue);

  }

