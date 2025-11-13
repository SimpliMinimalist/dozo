import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myapp/core/services/theme_provider.dart';
import 'package:myapp/core/themes/light_theme.dart';
import 'package:myapp/core/themes/dark_theme.dart';
import 'package:myapp/features/orders/presentation/views/orders_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeProvider.themeMode,
          debugShowCheckedModeBanner: false,
          home: const OrdersScreen(),
        );
      },
    );
  }
}
