import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/providers/theme_provider.dart';

class SkillWidgetButton extends StatelessWidget {
  final void Function() onPressed;
  final String skill;

  const SkillWidgetButton({Key key, this.onPressed, this.skill})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeSwitcher = Provider.of<ThemeSwitcher>(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: themeSwitcher.isLightTheme ? Color(0xffEEEEEE) : Color(0xff303030),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(skill, style: TextStyle(fontSize: 25),),
    );
  }
}
