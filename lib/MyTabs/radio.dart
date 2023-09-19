import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            child: Image.asset("assets/images/radio_image.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Quran Channel",
              style: Theme.of(context).textTheme.bodyMedium,
            ).tr(),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.skip_previous,
                  color: MyThemeData.primary,
                  size: 40,
                ),
                Icon(
                  Icons.play_arrow_rounded,
                  color: MyThemeData.primary,
                  size: 60,
                ),
                Icon(
                  Icons.skip_next,
                  color: MyThemeData.primary,
                  size: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
