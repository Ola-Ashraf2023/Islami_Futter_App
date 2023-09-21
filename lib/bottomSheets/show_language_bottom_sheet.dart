import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class LanguageSheet extends StatelessWidget {
  const LanguageSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              EasyLocalization.of(context)!.setLocale(Locale("en"));
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("English",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: EasyLocalization.of(context)!
                                        .currentLocale
                                        .toString() ==
                                    "en"
                                ? MyThemeData.primary
                                : MyThemeData.blackColor))
                    .tr(),
                Visibility(
                    visible: EasyLocalization.of(context)!
                                .currentLocale
                                .toString() ==
                            "en"
                        ? true
                        : false,
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
              EasyLocalization.of(context)!.setLocale(Locale("ar"));
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Arabic",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: EasyLocalization.of(context)!
                                        .currentLocale
                                        .toString() ==
                                    "en"
                                ? MyThemeData.blackColor
                                : MyThemeData.primary))
                    .tr(),
                Visibility(
                    visible: EasyLocalization.of(context)!
                                .currentLocale
                                .toString() ==
                            "ar"
                        ? true
                        : false,
                    child: Icon(
                      Icons.check,
                      color: MyThemeData.primary,
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
