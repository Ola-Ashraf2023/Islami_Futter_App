import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/Settings.dart';
import 'package:islami_app/hadeeth.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/quran.dart';
import 'package:islami_app/radio.dart';
import 'package:islami_app/tasbeeh.dart';

import 'my_theme_data.dart';
import 'my_theme_data.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(
            "assets/images/background.png",
          ),
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("Islami", style: Theme.of(context).textTheme.bodySmall),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/radio.png"),
                    color: index == 0 ? Colors.black : Colors.white,
                  ),
                  label: "Radio",
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/sebha.png"),
                    color: index == 1 ? Colors.black : Colors.white,
                  ),
                  label: "Sebha",
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/book.png"),
                    color: index == 2 ? Colors.black : Colors.white,
                  ),
                  label: "Hadeeth",
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/quran.png"),
                    color: index == 3 ? Colors.black : Colors.white,
                  ),
                  label: "Quran",
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    color: index == 4 ? Colors.black : Colors.white,
                  ),
                  label: "Settings"),
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    RadioTab(),
    TasbeehTab(),
    HadeethTab(),
    QuranTab(),
    SettingsTab()
  ];
}
