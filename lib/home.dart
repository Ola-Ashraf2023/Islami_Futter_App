import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/MyTabs/Settings.dart';
import 'package:islami_app/MyTabs/hadeeth.dart';
import 'package:islami_app/MyTabs/quran.dart';
import 'package:islami_app/MyTabs/radio.dart';
import 'package:islami_app/MyTabs/tasbeeh.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image(
          image: AssetImage(
            provider.theme == ThemeMode.light
                ? "assets/images/background.png"
                : "assets/images/darkBackground.png",
          ),
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("Islami", style: Theme.of(context).textTheme.bodySmall)
                .tr(),
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
                    color: index == 0
                        ? Theme.of(context).colorScheme.background
                        : Colors.white,
                  ),
                  label: "Radio".tr(),
                  backgroundColor: provider.theme == ThemeMode.light
                      ? MyThemeData.primary
                      : MyThemeData.primaryDark),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/sebha.png"),
                    color: index == 1
                        ? Theme.of(context).colorScheme.background
                        : Colors.white,
                  ),
                  label: "Sebha".tr(),
                  backgroundColor: provider.theme == ThemeMode.light
                      ? MyThemeData.primary
                      : MyThemeData.primaryDark),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/book.png"),
                    color: index == 2
                        ? Theme.of(context).colorScheme.background
                        : Colors.white,
                  ),
                  label: "Hadeeth".tr(),
                  backgroundColor: provider.theme == ThemeMode.light
                      ? MyThemeData.primary
                      : MyThemeData.primaryDark),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/quran.png"),
                    color: index == 3
                        ? Theme.of(context).colorScheme.background
                        : Colors.white,
                  ),
                  label: "Quran".tr(),
                  backgroundColor: provider.theme == ThemeMode.light
                      ? MyThemeData.primary
                      : MyThemeData.primaryDark),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    color: index == 4
                        ? Theme.of(context).colorScheme.background
                        : Colors.white,
                  ),
                  label: "Settings".tr(),
                  backgroundColor: provider.theme == ThemeMode.light
                      ? MyThemeData.primary
                      : MyThemeData.primaryDark),
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
