import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    cargarData();
  }

  void cargarData() {
    rootBundle.loadString('data/menu_opts.json').then((data) {
      Map dataMap = json.decode(data);
      print(dataMap);

      // OJO realizar un hot restart
      print(dataMap['nombreApp']);
      print(dataMap['rutas']);

      opciones = dataMap['rutas'];
    });
  }
}

// solo se expone la instancia
final menuProvider = new _MenuProvider();
