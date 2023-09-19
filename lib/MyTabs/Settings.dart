import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';

import '../bottomSheets/show_language_button_sheet.dart';
import '../bottomSheets/show_mode_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Language").tr(),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: MyThemeData.primary),
              ),
              child: Row(
                children: [
                  Text(EasyLocalization.of(context)!.currentLocale.toString() ==
                              "en"
                          ? "English"
                          : "Arabic")
                      .tr(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text("Mode").tr(),
          InkWell(
            onTap: () {
              showModeBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: MyThemeData.primary),
              ),
              child: Row(
                children: [
                  Text("Light").tr(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18)),
          borderSide: BorderSide(color: Colors.transparent)),
      builder: (context) {
        return LanguageSheet();
      },
    );
  }

  showModeBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18)),
          borderSide: BorderSide(color: Colors.transparent)),
      builder: (context) {
        return ModeSheet();
      },
    );
  }
}
