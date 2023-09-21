import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class TasbeehTab extends StatefulWidget {
  @override
  State<TasbeehTab> createState() => _TasbeehTabState();
}

class _TasbeehTabState extends State<TasbeehTab> {
  int counter = 0;
  int index = 0;
  List<String> prayers = [
    "سبحان الله",
    "الحمد لله",
    "لا إله إلا الله",
    "الله أكبر"
  ];
  String temp = "سبحان الله";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 14,
            ),
            Container(
              child: Image.asset(provider.theme == ThemeMode.light
                  ? "assets/images/FullSebha.png"
                  : "assets/images/FullSebhaDark.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Number of Tasbeehs",
                style: Theme.of(context).textTheme.bodyMedium,
              ).tr(),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 15.0, bottom: 15, left: 20, right: 20),
                child: Text("$counter"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                counter++;
                if (counter == 33) {
                  index = index + 1;
                  if (index == 4) index = 0;
                  temp = prayers[index];
                  counter = 0;
                }
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  temp,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.black),
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.onBackground,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
            )
          ],
        ),
      ),
    );
  }
}
