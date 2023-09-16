import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';

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
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 14,
            ),
            Container(
              child: Image.asset("assets/images/FullSebha.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Number of Tasbeehs",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffB7935F),
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
                      .copyWith(color: Colors.white),
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: MyThemeData.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
            )
          ],
        ),
      ),
    );
  }
}
