import 'package:flutter/material.dart';
import 'package:islami_app/hadeeth_model.dart';

import 'my_theme_data.dart';

class AhadeethDetails extends StatefulWidget {
  static const String routeName = "hadeeth";

  @override
  State<AhadeethDetails> createState() => _AhadeethDetailsState();
}

class _AhadeethDetailsState extends State<AhadeethDetails> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadeethModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
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
            itemCount: args.content.length,
            itemBuilder: (context, index) {
              return Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    "${args.content[index]}",
                    textAlign: TextAlign.center,
                  ));
            },
          ),
        ),
      ),
    );
  }
}
