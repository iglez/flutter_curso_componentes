import 'package:componentes/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

// statelessW
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    // mandando llamar para ver si funciona
    print(menuProvider.opciones); // ver en debig console
    // Solo se ve en restart

    return ListView(
      children: _crearItems(),
    );
  }

  List<Widget> _crearItems() {
    return [
      ListTile(title: Text('Hola Mundo')),
      Divider(),
      ListTile(title: Text('Hola Mundo')),
      Divider(),
      ListTile(title: Text('Hola Mundo')),
    ];
  }
}
