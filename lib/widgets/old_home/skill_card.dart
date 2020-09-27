import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/providers/theme_provider.dart';
import 'package:website/widgets/old_home/skills_widget.dart';

class SkillCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeSwitcher = Provider.of<ThemeSwitcher>(context);
    final cardColor = themeSwitcher.isLightTheme ? Color(0xff303030) : Color(0xffEEEEEE);
    final skillTextColor = themeSwitcher.isLightTheme ? Color(0xffEEEEEE) : Color(0xff303030);

    return Container(
      width: 600,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
        ),
        child: Container(
          color: cardColor,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text("Skills:", style: TextStyle(fontSize: 35, color: skillTextColor),),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SkillWidgetButton(
                  skill: "Flutter",
                  onPressed: () {},
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SkillWidgetButton(
                  skill: "Firebase",
                  onPressed: () {},
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SkillWidgetButton(
                  skill: "Git / GitHub",
                  onPressed: () {},
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SkillWidgetButton(
                  skill: "Python",
                  onPressed: () {},
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SkillWidgetButton(
                  skill: "Teamwork",
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
