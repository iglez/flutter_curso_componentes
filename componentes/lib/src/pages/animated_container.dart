import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatelessWidget {
  // const AnimatedContainerPage({Key key}) : super(key: key);

  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animated Container'),
        ),
        body: Center(
          child: Container(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color
            ),
          ),
        ));
  }
}
