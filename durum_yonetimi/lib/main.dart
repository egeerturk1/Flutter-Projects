import 'package:durum_yonetimi/checkbox_provider.dart';
import 'package:durum_yonetimi/view/birinci_sayfa.dart';
import 'package:durum_yonetimi/view_model/birinci_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (BuildContext context) => BirinciViewModel(),
            ),
            ChangeNotifierProvider(
              create: (BuildContext context) => CheckboxProvider(),
            )
          ],
          child: BirinciSayfa(),
        )

        /*ChangeNotifierProvider(
        create:(BuildContext context) => BirinciViewModel(),
        child: BirinciSayfa(),
      ),*/
        );
  }
}
