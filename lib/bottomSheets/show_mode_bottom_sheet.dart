import 'package:flutter/material.dart';

class ModeSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .6,
    );
  }
}
