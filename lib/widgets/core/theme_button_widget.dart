import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:website/providers/theme_provider.dart';

class ThemeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeSwitcher = Provider.of<ThemeSwitcher>(context);
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
        onPressed: () {
          themeSwitcher.changeTheme();
        },
        icon: Icon(
          themeSwitcher.isLightTheme
              ? FontAwesomeIcons.sun
              : FontAwesomeIcons.moon,
        ),
      ),
    );
  }
}
