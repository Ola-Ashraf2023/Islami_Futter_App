import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/ahadeth_details.dart';
import 'package:islami_app/models/hadeeth_model.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/providers/hadeeth_provider.dart';
import 'package:provider/provider.dart';

class HadeethTab extends StatefulWidget {
  @override
  State<HadeethTab> createState() => _HadeethTabState();
}

class _HadeethTabState extends State<HadeethTab> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HadeethProvider(),
      builder: (context, child) {
        var provider = Provider.of<HadeethProvider>(context);
        provider.loadHadeeth();
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
              itemCount: provider.allAhadeeth.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AhadeethDetails.routeName,
                        arguments: HadeethModel(
                            provider.allAhadeeth[index].name,
                            provider.allAhadeeth[index].content));
                  },
                  child: Text(
                    provider.allAhadeeth[index].name,
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ))
          ],
        ));
      },
    );
  }
}
