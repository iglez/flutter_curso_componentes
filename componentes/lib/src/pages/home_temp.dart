// importm
import 'package:flutter/material.dart';

// statelessW
class HomePageTemp extends StatelessWidget {
  final List<String> opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    // https://api.flutter.dev/flutter/widgets/ListView-class.html#constructors
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: crearItems()
      ),
    );
  }

  List<Widget> crearItems() {
    return [];
  }
}
