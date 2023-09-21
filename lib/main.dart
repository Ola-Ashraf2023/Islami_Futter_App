import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/ahadeth_details.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/sura_details.dart';
import 'package:provider/provider.dart';

import 'home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: EasyLocalization(
          supportedLocales: [Locale('en'), Locale('ar')],
          path: 'assets/translations',
          // <-- change the path of the translation files
          fallbackLocale: Locale('en'),
          child: MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      themeMode: provider.theme,
      theme: MyThemeData.LightTheme,
      darkTheme: MyThemeData.DarkTheme,
      title: 'Islami',
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        AhadeethDetails.routeName: (context) => AhadeethDetails(),
      },
    );
  }
}
