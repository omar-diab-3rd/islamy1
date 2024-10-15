import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:islamy/commen/apptheme.dart';
import 'package:islamy/screens/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    theme: Apptheme.lightTheme,
    home: Splashscreen(),
  )  // Wrap your app
  );
}

