import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/pages/home_page.dart';
import 'package:website/providers/theme_provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeSwitcher = Provider.of<ThemeSwitcher>(context);
    return MaterialApp(
      theme: themeSwitcher.isLightTheme ? ThemeData.dark() : ThemeData.light(),
      routes: {
        'home': (context) => Home(),
      },
      initialRoute: 'home',
    );
  }
}
