import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/pages/home_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [],
    child: MaterialApp(
      routes: {
        'home': (context) => Home()
      },
      initialRoute: 'home',
    ),
  ));
}
