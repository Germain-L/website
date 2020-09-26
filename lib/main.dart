import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/pages/home_page.dart';
import 'package:website/providers/theme_provider.dart';

import 'app.dart';
import 'providers/orientaion_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeSwitcher(),
        ),
        ChangeNotifierProvider(
          create: (_) => OrientationProvider(),
        )
      ],
      child: App(),
    ),
  );
}
