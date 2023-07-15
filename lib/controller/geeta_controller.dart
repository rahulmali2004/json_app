import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json/modals/geetamodal.dart';

class GeetaController extends ChangeNotifier {
  List<GeetaModal> allverse = [];
  List<GeetaModal2> allverse2 = [];
  String lan2 = "hindi";
  String author_name = "Swami Ramsukhdas";

  GeetaController() {
    init();
  }

  init() async {
    String data = await rootBundle.loadString("assets/geeta.json");
    String data2 = await rootBundle.loadString("assets/geetsmean.json");
    List demo1 = jsonDecode(data);
    List demo2 = jsonDecode(data2);
    allverse = demo1.map((e) => GeetaModal.fromMap(data: e)).toList();
    debugPrint("--------------------------------");
    allverse2 = demo2.map((e) => GeetaModal2.fromMap(data: e)).toList();
    debugPrint("--------------------------------");
    notifyListeners();
  }

  changeLan({required String lan, required String author}) {
    lan2 = lan;
    author_name = author;
    notifyListeners();
  }
}
