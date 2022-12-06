import 'package:flutter/material.dart';

class AppTheme {
  static String themeUse = 'light';

  // Light theme
  static late Color primary;
  static late Color secondary;

  static ThemeData get getThemeLight {
    themeUse = "light";
    primary = Colors.redAccent;
    secondary = const Color(0xff990000);

    return ThemeData.light().copyWith(
      // Color primario
      primaryColor: primary,
      // Appbar Theme
      appBarTheme: AppBarTheme(color: primary, elevation: 10),
    );
  }

  static ThemeData get getThemeDark {
    themeUse = "light";
    primary = Colors.orange;
    secondary = Colors.orange;

    return ThemeData.dark().copyWith(
        // Color primario
        primaryColor: primary,
        // Appbar Theme
        appBarTheme: AppBarTheme(color: primary, elevation: 10),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: secondary)),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: primary,
                shape: const StadiumBorder(),
                elevation: 0)),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: primary),
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          // Cuando esta habilitado
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          // Borde del foco
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          // Borde
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
        ));
  }
}
