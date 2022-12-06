import 'package:flutter/material.dart';

class ConstantElements {
  static AppBar getAppbar(String name) {
    return AppBar(
      title: Text(name),
      centerTitle: true,
    );
  }
}
