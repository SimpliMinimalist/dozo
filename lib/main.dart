import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myapp/core/services/theme_provider.dart';
import 'app.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}
