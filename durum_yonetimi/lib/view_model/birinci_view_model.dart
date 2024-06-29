
import 'package:durum_yonetimi/view/ikinci_sayfa.dart';
import 'package:durum_yonetimi/view_model/ikinci_view_nodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BirinciViewModel with ChangeNotifier{
  String _yazi = "Merhaba";
  bool _isChecked = false;
  Color _renk = Colors.white;

  String get yazi => _yazi;

  set yazi(String value) {
    _yazi = value;
    notifyListeners();
  }

  Color get renk => _renk;

  set renk(Color value) {
    _renk = value;
    notifyListeners();
  }



  void ikinciSayfayiAc(BuildContext context){
    MaterialPageRoute pageRoute = MaterialPageRoute(builder: (context){
      return ChangeNotifierProvider(
        create: (context) => IkinciViewModel(),
        child: IkinciSayfa(),
      );
    });
    Navigator.push(context, pageRoute);
  }
}