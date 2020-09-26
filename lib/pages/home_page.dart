import 'package:flutter/material.dart';

import '../widgets/core/theme_button_widget.dart';
import '../widgets/home/skill_card.dart';
import '../widgets/home/title.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.landscape) {

          } else if (orientation == Orientation.portrait) {
            
          }
          return Column(
            children: [
              ThemeButton(),
              CustomTitle(),
              SizedBox(height: 30),
              SkillCard(),
            ],
          );
        },
      ),
    );
  }
}
