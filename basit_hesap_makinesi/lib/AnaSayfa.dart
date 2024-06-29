import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AnaUygulama.dart';

class AnaSayfa  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basit Hesap Makinesi"
      ),
        backgroundColor: Colors.blue,
      ),
      body: AnaUygulama(),
    );
  }
}
