import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rivoj_uz_project/feature/app.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const App());
}

