import 'package:durum_yonetimi/checkbox_provider.dart';
import 'package:durum_yonetimi/view/yonlendirme_butonu.dart';
import 'package:durum_yonetimi/view_model/birinci_view_model.dart';
import 'package:durum_yonetimi/view_model/ikinci_view_nodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BirinciSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BirinciViewModel>(builder: (context, viewModel, child) {
      return Scaffold(
        backgroundColor: viewModel.renk,
        appBar: _buildAppbar(),
        body: child,
      );
    },
    child: _buildBody(context),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(title: Text("Birinci Sayfa"));
  }

  Widget _buildBody(BuildContext context) {
    double size = MediaQuery.sizeOf(context).width / 3;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FlutterLogo(
          size: 96,
        ),
        _buildBaslik(),
        _buildYaziyiDegistirButton(context),
        _buildRenkDegistirButton(context),
        YonlendirmeButonu(),
        _buildCheckboxRow(context),
      ],
    );
  }

  Widget _buildCheckboxRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Checkbox", style: TextStyle(fontSize: 18)),
        Consumer<CheckboxProvider>(builder: (context, birinciViewModel, child) {
          return Checkbox(
              value: birinciViewModel.isChecked,
              onChanged: (bool? yeniDeger) {
                if (yeniDeger != null) {
                  birinciViewModel.isChecked = yeniDeger;
                }
              });
        }),
      ],
    );
  }

  Widget _buildYaziyiDegistirButton(BuildContext context) {
    BirinciViewModel birinciViewModel = Provider.of<BirinciViewModel>(
      context,
      listen: false,
    );
    return ElevatedButton(
      onPressed: () {
        birinciViewModel.yazi = "Butona Tıklandı";
      },
      child: Text("Yazıyı Değiştir"),
    );
  }

  Widget _buildBaslik() {
    return Consumer<BirinciViewModel>(builder: (context, viewModel, child) {
      return Text(
        viewModel.yazi,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      );
    });
  }

  Widget _buildRenkDegistirButton(BuildContext context) {
    BirinciViewModel birinciViewModel = Provider.of<BirinciViewModel>(
      context,
      listen: false,
    );
    return ElevatedButton(
      onPressed: () {
        birinciViewModel.renk = Colors.blue;
      },
      child: Text("Renk Değiştir"),
    );
  }
}
