import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ilk_flutter_projem/sehir.dart';

class AnaSayfa extends StatefulWidget {
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  List<String> _sehirler = [
    "İstanbul",
    "Ankara",
    "İzmir",
    "Tekirdağ",
  ];

  String _secilenSehir = "İstanbul";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
      body: Center(
        child: DropdownButton<String>(
          value: _secilenSehir,
          items: _sehirler.map((String sehir){
            return DropdownMenuItem<String>(
              value: sehir,
              child: Text(sehir),
            );
          }).toList(),
          onChanged: _sehirDegistir ,
          icon: Icon(Icons.location_city),
          iconSize: 36,
          dropdownColor: Colors.amber,

        ),
      ),
    );
  }

  void _sehirDegistir(String? yeniSecilenSehir){
    setState(() {
      if(yeniSecilenSehir!=null){
        _secilenSehir=yeniSecilenSehir;
      }
    });

  }
}






     /*   backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
*/










        /*backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text("Liste Başı", style: TextStyle(
            fontSize: 32
          ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.blue,
                ),Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.red,
                ),Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.green,
                ),Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.blue,
                ),Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.red,
                ),Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.green,
                ),Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.red,
                )
              ],
            ),
          ),
          Text(
            "Liste Sonu",
            style: TextStyle(
              fontSize: 32
            ),
          )
        ],
      ),
    );
  }

}*/







/*  List<Sehir> _sehirler = [
    Sehir("İstanbul", 34, 15900000),
    Sehir("Ankara", 06, 570000),
    Sehir("Bursa", 16, 440000),
    Sehir("Antalya", 07, 3100000),
    Sehir("Konya", 42, 2290000),
    Sehir("Adana", 01, 2270000),
    Sehir("Şanlıurfa", 63, 2180000),
    Sehir("Gaziantep", 27, 2150000),
    Sehir("Kocaeli", 41, 2000000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: _sehirler.length,
          itemBuilder: _listeOgesiniOlustur,
      )
    );
  }
  Widget _listeOgesiniOlustur(BuildContext context,int index){
    return ListTile(
      title: Text(_sehirler[index].isim),
      subtitle: Text(_sehirler[index].nufus.toString()),
      trailing: Text(_sehirler[index].plakaKodu.toString()),
      leading: Icon(Icons.location_city),
    );
  }
}*/






  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.blue,
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.green,
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.blue,
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.green,
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.blue,
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
*/




/*class AnaSayfa extends StatefulWidget {
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  String _textYazisi = "Başlangıç Yazısı";

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextField(
            controller: _controller,
            keyboardType: TextInputType.emailAddress,
            maxLines: 4,
            minLines: 2,
            textAlign: TextAlign.start,
            obscureText: false,
            enabled: true,
            autofocus: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(16),
              ),
              labelText: "Adınızı giriniz",
              contentPadding: EdgeInsets.all(40),
              counterText: "Bir metin girin",
              counterStyle: TextStyle(color: Colors.red),
              counter: Icon(Icons.message),
              *//*filled: true,
              fillColor: Colors.green,*//*
              hintText: "Adınız",
              hintStyle: TextStyle(color: Colors.blue),
            ),
          ),
          Text(_textYazisi),
          ElevatedButton(
              onPressed: degistir,
              child: Text("Yazıyı Değiştir")
          )
        ],
      )
      ),
    );
  }

  void degistir() {
    setState(() {
      _textYazisi = _controller.text;
    });
  }
}*/

/*class _AnaSayfaState extends State<AnaSayfa> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                _sayac.toString(),
              style: TextStyle(
                fontSize: 48,
              ),
            ),
            ElevatedButton.icon(
              onPressed: _butonTiklandi,
              label: Text(
                "Sayacı Arttır",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              icon: Icon(Icons.watch),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.all(30),
                elevation: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _butonTiklandi() {
    setState((){
      _sayac++;
    });
  }
}*/

/* @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CircleAvatar(
        backgroundImage: AssetImage(
          "assets/background.jpg"
        ),
        radius: 150,
        child: Text(
            "Doğa",
            style:TextStyle(
              color: Colors.red,
              fontSize: 48,
            )
        ),
      ),
    );
  }
}*/

/* @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Image.asset(
        "assets/background.jpg",
        width: 350,
        height: 350,
        alignment: Alignment.topLeft,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}*/

/*@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
       */ /* mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,*/ /*
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
          ),
          SizedBox(height: 10,),
          Container(
            width: 50,
            height: 50,
            color: Colors.blue,
          ),
          SizedBox(height: 10,),
          Container(
            width: 50,
            height: 50,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}*/

/*  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 250,
        height: 300,
        color: Colors.red,
        margin: EdgeInsets.only(top: 50,left: 20),
        padding: EdgeInsets.all(30),
        child: Text(
          "Merhaba Dünya Merhaba Dünya Merhaba Dünya"
              "Merhaba Dünya Merhaba Dünya Merhaba Dünya"
              "Merhaba Dünya Merhaba Dünya Merhaba Dünya"
              "Merhaba Dünya Merhaba Dünya Merhaba Dünya"
              "Merhaba Dünya Merhaba Dünya Merhaba Dünya"
              "Merhaba Dünya Merhaba Dünya Merhaba Dünya"
              "Merhaba Dünya Merhaba Dünya Merhaba Dünya",
          textAlign: TextAlign.justify,

        ),
      ),
    );
  }
}*/

/*  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            "Merhaba Dünya",
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.red,
            backgroundColor: Colors.white,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}*/

/*class AnaSayfa extends StatefulWidget {
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Merhaba Dünya"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _butonaTiklandi,
      ),
      body: Center(
          child: Text(_sayac.toString())
      ),
    );
  }

  void _butonaTiklandi(){
    setState(() {
      _sayac++;
    });
  }
}*/
