import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  // ListaPage({Key key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<int> _enteros = [];
  int _ultimoNumero = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    // https://picsum.photos/

    return ListView.builder(
        itemCount: _enteros.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _enteros[index];

          return FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://picsum.photos/200/300?random=$imagen'),
          );
        });
  }

  void _agregar10() {
    for (var i = 1; i <= 10; i++) {
      _ultimoNumero++;
      _enteros.add(_ultimoNumero);
    }

    setState(() {});
  }
}
