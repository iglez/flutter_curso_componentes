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
      body: ListView(children: _crearItemsCorto()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    // for in
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      // lista.add(tempWidget);
      // lista.add(Divider());

      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      // envolver en columna
      return Column(
        children: [
          ListTile(
            leading: Icon(Icons.library_add),
            title: Text(item),
            subtitle: Text('subtitulo'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
