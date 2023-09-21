import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ahadeth_details.dart';
import 'package:islami_app/models/hadeeth_model.dart';
import 'package:islami_app/my_theme_data.dart';

class HadeethTab extends StatelessWidget {
  List<HadeethModel> allAhadeeth = [];

  @override
  Widget build(BuildContext context) {
    loadHadeeth();
    return Scaffold(
        body: Column(
          children: [
        Container(
          child: Image.asset("assets/images/ahadeth_image.png"),
        ),
        Divider(
          thickness: 3,
          color: MyThemeData.primary,
        ),
        Text(
          "Ahadeth",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ).tr(),
        Divider(
          thickness: 3,
          color: MyThemeData.primary,
        ),
        Expanded(
            child: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              color: MyThemeData.primary,
              thickness: 1,
              endIndent: 40,
                      indent: 40,
                    );
                  },
                  itemCount: allAhadeeth.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AhadeethDetails.routeName,
                            arguments: HadeethModel(
                                allAhadeeth[index].name, allAhadeeth[index].content));
                      },
                      child: Text(
                        allAhadeeth[index].name,
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                ))
          ],
        ));
  }

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
    }).catchError((e) {
      print(e.toString());
    });
  }
}
