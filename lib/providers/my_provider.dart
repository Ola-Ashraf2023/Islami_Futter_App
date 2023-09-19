import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier {
  String local = "en";

  changeLanguage(String langCode, BuildContext context) {
    local = langCode;
    EasyLocalization.of(context)!.setLocale(Locale(local));
    notifyListeners();
  }
}
