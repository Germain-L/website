import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          """Hey there I'm Germain 👋
          first year student at EPSI Bordeaux""",
          style: TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}
