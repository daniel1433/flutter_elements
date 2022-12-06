import 'package:flutter/material.dart';

class RouteModel {
  final String path;
  final String name;
  final Widget screen;
  final IconData icon;
  // final Color color;
  final String description;

  RouteModel(
      {required this.path,
      required this.name,
      required this.screen,
      required this.icon,
      // required this.color,
      required this.description});
}
