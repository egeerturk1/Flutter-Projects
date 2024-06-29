import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnaUygulama extends StatefulWidget {
  const AnaUygulama({super.key});

  @override
  State<AnaUygulama> createState() => _AnaUygulamaState();
}

class _AnaUygulamaState extends State<AnaUygulama> {
  num? sayi1, sayi2;
  num sonuc=0;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.symmetric(vertical: 50),
      child: Center(
        child: Column(
          children: [
            Text(
                 "Sonuç : " + sonuc.toString(),
              style: TextStyle(
                fontSize: 30
              ),
            ),
            TextField(
              controller: t1,
              textAlign: TextAlign.center,
            ),
            TextField(
              controller: t2,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: sayiTopla, child: Text("Topla")),
            ElevatedButton(onPressed: sayiCikar, child: Text("Çıkar")),
            ElevatedButton(onPressed: sayiCarp, child: Text("Çarp")),
            ElevatedButton(onPressed: sayiBol, child: Text("Böl")),
          ],
        ),
      ),
    );
  }

  void sayiTopla() {
    setState(() {
      sayi1=num.parse(t1.text);
      sayi2=num.parse(t2.text);
      sonuc = (sayi1!+sayi2!)!;
    });
  }

  void sayiBol() {
    setState(() {
      sayi1=num.parse(t1.text);
      sayi2=num.parse(t2.text);
      sonuc = (sayi1!/sayi2!)!;
    });
  }

  void sayiCikar() {
    setState(() {
      sayi1=num.parse(t1.text);
      sayi2=num.parse(t2.text);
      sonuc = (sayi1!-sayi2!)!;
    });
  }

  void sayiCarp() {
    setState(() {
      sayi1=num.parse(t1.text);
      sayi2=num.parse(t2.text);
      sonuc = (sayi1!*sayi2!)!;
    });
  }
}
