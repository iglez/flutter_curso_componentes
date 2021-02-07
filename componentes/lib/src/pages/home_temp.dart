// importm
import 'package:flutter/material.dart';

// statelessW
class HomePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // https://api.flutter.dev/flutter/widgets/ListView-class.html#constructors
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(),
    );
  }
}
