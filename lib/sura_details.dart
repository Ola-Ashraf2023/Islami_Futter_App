import 'package:flutter/material.dart';
import 'package:islami_app/models/sura_model.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/providers/sura%20_provider.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "sura";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    return ChangeNotifierProvider(
      create: (context) => SuraProvider()..loadFile(args.idx + 1),
      builder: (context, child) {
        var provider2 = Provider.of<SuraProvider>(context);
        var provider = Provider.of<MyProvider>(context);
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(provider.theme == ThemeMode.light
                  ? "assets/images/background.png"
                  : "assets/images/darkBackground.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                args.name,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            body: Card(
              elevation: 14,
              margin: EdgeInsets.all(18),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: MyThemeData.primary),
              ),
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 1,
                    endIndent: 40,
                    indent: 40,
                  );
                },
                itemCount: provider2.verses.length,
                itemBuilder: (context, index) {
                  return Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        "${provider2.verses[index]}${index + 1}",
                        textAlign: TextAlign.center,
                      ));
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
