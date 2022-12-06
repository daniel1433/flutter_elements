import 'package:flutter/material.dart';

import 'package:curso_fernando/routes/routes.dart';
import 'package:curso_fernando/theme/app_theme.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: RoutesFile.initialRoute,
    title: "Material App",
    // Rutas creadas de manera dinamica
    onGenerateRoute: RoutesFile.onGenerateRoute,
    routes: RoutesFile.getPaths(),
    // Theme
    // theme: ThemeData.dark(),
    theme: AppTheme.getThemeDark,
  ));
}
