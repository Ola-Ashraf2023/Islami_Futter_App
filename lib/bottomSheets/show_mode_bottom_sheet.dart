import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../my_theme_data.dart';
import '../providers/my_provider.dart';

class ModeSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Light",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: provider.theme == ThemeMode.light
                                ? MyThemeData.primary
                                : Theme.of(context).colorScheme.onSecondary))
                    .tr(),
                Visibility(
                    visible: provider.theme == ThemeMode.light ? true : false,
                    child: Icon(
                      Icons.check,
                      color: MyThemeData.primary,
                      size: 30,
                    )),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dark",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: provider.theme == ThemeMode.light
                                ? MyThemeData.blackColor
                                : MyThemeData.primaryDark))
                    .tr(),
                Visibility(
                    visible: provider.theme == ThemeMode.dark ? true : false,
                    child: Icon(
                      Icons.check,
                      color: MyThemeData.primaryDark,
                      size: 30,
                    )),
                //Icon(Icons.check),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
