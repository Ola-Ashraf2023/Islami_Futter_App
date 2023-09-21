import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/hadeeth_model.dart';

class HadeethProvider extends ChangeNotifier {
  List<HadeethModel> allAhadeeth = [];

  loadHadeeth() async {
    String title, hadeeth;
    List<String> tempString = [], content = [];
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeeth) {
      List<String> AhadeethList = ahadeeth.split("#");
      for (int i = 0; i < AhadeethList.length; i++) {
        hadeeth = AhadeethList[i];
        tempString = hadeeth.trim().split("\n");
        title = tempString[0];
        //print(title);
        tempString.removeAt(0);
        content = tempString;
        HadeethModel hadeethModel = HadeethModel(title, content);
        allAhadeeth.add(hadeethModel);
      }
      notifyListeners();
    }).catchError((e) {
      print(e.toString());
    });
  }
}
