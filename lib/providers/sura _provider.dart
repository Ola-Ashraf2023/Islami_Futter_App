import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraProvider extends ChangeNotifier {
  List<String> verses = [];

  loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/$index.txt");
    List<String> lines = sura.split("\n");
    verses = lines;
    //print(verses[9]);
    //print(verses.length);
    for (int i = 0; i < verses.length; i++) {
      print(verses[i]);
    }
    notifyListeners();
  }
}
