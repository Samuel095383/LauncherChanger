import 'package:flutter/material.dart';
import 'package:launcher_changer/page/homepage.dart';
import 'package:launcher_changer/themes/theme_provider.dart';
import 'package:provider/provider.dart';

/*
void main() {
  ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  );
}
*/

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
