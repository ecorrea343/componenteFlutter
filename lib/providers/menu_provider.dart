import 'package:flutter/services.dart' show rootBundle;


class MenuProvider{

  List<dynamic> opciones = [];
  MenuProvider(){
    cargarData();
  }

  cargarData(){
    rootBundle.loadString('data/menu_opt.json');
  }
}