import 'dart:ui';

import 'package:flutter/cupertino.dart';

class OrientationProvider with ChangeNotifier {
  Orientation orientation;

  void changeOrientation(Orientation newOrientation) {
    orientation = newOrientation;
    notifyListeners();
  }
}