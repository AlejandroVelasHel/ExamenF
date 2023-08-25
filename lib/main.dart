import 'package:flutter/material.dart';

import 'ScreenView/VidaSaludable.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto Vida Saludable',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: VidaSaludable(),
    );
  }
}


