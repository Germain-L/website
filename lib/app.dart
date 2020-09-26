import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/pages/home_page.dart';
import 'package:website/providers/theme_provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeSwitcher = Provider.of<ThemeSwitcher>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeSwitcher.isLightTheme ? ThemeMode.light : ThemeMode.dark,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(
      ),
      routes: {
        'home': (context) => Home(),
      },
      initialRoute: 'home',
    );
  }
}

