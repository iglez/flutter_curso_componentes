import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  // SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        child: Column(children: [
          _crearSlider(),
        ]),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      min: 10.0,
      max: 400.0,
      value: _valorSlider,
      onChanged: (double valor) {
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }
}
