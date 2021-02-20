import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  // SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
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
      value: 100.0,
      onChanged: (double valor) {
        print(valor);
      },
    );
  }
}
