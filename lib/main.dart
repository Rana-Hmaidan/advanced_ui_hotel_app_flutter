import 'package:flutter/material.dart';
import 'package:flutter_advanced_ui/layout/home_layout.dart';
import 'package:flutter_advanced_ui/shared/theme_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
        scaffoldBackgroundColor : AppColors.scaffoldBG,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.scaffoldBG,
          centerTitle: false,
        ),
        fontFamily: ThemeConstants.fontFamily,
        useMaterial3: true,
      ),
      home: const HomeLayout(),
    );
  }
}