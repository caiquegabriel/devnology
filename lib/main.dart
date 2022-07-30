import 'package:devnology/widget_app.dart';
import 'package:devnology/widget_app_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: const App()
    )
  );
}