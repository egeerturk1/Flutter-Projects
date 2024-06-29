import 'package:flutter/material.dart';

import 'AnaSayfa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hesap Makinesi",
      home: AnaSayfa(),
    );
  }
}