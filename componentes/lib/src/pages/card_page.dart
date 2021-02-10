import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cargarTipo1(),
          SizedBox(height: 30.0),
          _cargarTipo2(),
        ]
      ),
    );
  }

  Widget _cargarTipo1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text('Soy el titulo'),
            subtitle: Text('Aqui estamos en la descripcion de la tarjeta viendo la idea de lo que quiero mostrarles con mucho text'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                onPressed: () {},
                child: Text('Cancelar')
              ),
              FlatButton(
                onPressed: () {},
                child: Text('Ok')
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cargarTipo2() {
    return Card(
      child: Column(
        children: [
          Image(
            image: NetworkImage('https://wallpapercave.com/wp/wp3720374.jpg'),
          ),
          Text('Ejemplo texto')
        ]
      ),  
    );
  }
}
