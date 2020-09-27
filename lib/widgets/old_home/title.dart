import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/providers/theme_provider.dart';

class CustomTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeSwitcher = Provider.of<ThemeSwitcher>(context);

    final cardColor =
        themeSwitcher.isLightTheme ? Color(0xff303030) : Color(0xffEEEEEE);
    final titleTextColor =
        themeSwitcher.isLightTheme ? Color(0xffEEEEEE) : Color(0xff303030);

    return Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Card(
          color: cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              """Hey there I'm Germain 👋
              first year student at EPSI Bordeaux""",
              style: TextStyle(fontSize: 35, color: titleTextColor),
            ),
          ),
        ),
      ),
    );
  }
}
