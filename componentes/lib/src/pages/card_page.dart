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
      // elevation: 0.0,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
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
          FadeInImage(
            image: NetworkImage('https://wallpapercave.com/wp/wp3720374.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 200,
            fit: BoxFit.cover
          ),
          // Image(
          //   image: NetworkImage('https://wallpapercave.com/wp/wp3720374.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Ejemplo texto')
          )
        ]
      ),  
    );
  }
}
