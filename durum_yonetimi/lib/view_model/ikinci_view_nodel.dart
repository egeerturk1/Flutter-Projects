import 'package:flutter/material.dart';

import '../model/siparis.dart';

class IkinciViewModel with ChangeNotifier{
  List<Siparis> siparisler = [];

  IkinciViewModel(){
    for(int i=1;i<=5;i++){
      Siparis siparis = Siparis("Siparis $i", "Onay Bekliyor...");
      siparisler.add(siparis);
    }
  }

}