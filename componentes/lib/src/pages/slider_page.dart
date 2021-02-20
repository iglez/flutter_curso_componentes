import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  // SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _checkBloqueado = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(children: [
          _crearSlider(),
          _crearCheckbox(),
          Expanded(child: _crearImagen()),
        ]),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamano de la imagen',
      // divisions: 10,
      min: 10.0,
      max: 400.0,
      value: _valorSlider,
      onChanged: _checkBloqueado ? null : (double valor) {
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }

  Widget _crearCheckbox() {
    return Checkbox(
        value: _checkBloqueado,
        onChanged: (valor) {
          setState(() {
            _checkBloqueado = valor;  
          });
        });
  }

  Widget _crearImagen() {
    return FadeInImage(
      placeholder: AssetImage('assets/jar-loading.gif'),
      image: NetworkImage(
          'https://embrosoft.com/wp-content/uploads/2020/03/Star-Wars-The-Mandalorian-This-is-The-Way-patches-for-clothes-The-Bounty-Hunter-frontal.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
