import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final _icon = <String, IconData>{


    'add_alert'     : Icons.add_alert,
    'accessibility' : Icons.accessibility,
    'folder_open'   : Icons.folder_open,
    'donut_large'   : Icons.donut_large,//modificacion de video 78
    'input'         : Icons.input,//modificacion de video 79
    'tune'          : Icons.tune,//modificacion de el video 84 Slider
    'list'          : Icons.list//modificacion de el video 86 Listview

};


  Icon getIcon(String nombreIcono){

      return Icon (_icon[nombreIcono] , color: Colors.blue);

  }

