import 'dart:math';
import 'package:flutter/material.dart';

import 'package:curso_fernando/const/constant.widgets.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<StatefulWidget> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  double width = 100;
  double heigth = 100;
  BorderRadius borderRadius = BorderRadius.circular(10);
  Color color = Colors.red;

  @override
  void initState() {
    super.initState();
  }

  changeValues(BuildContext context) {
    try {
      Random rnd = Random();
      int red = rnd.nextInt(255);
      int blue = rnd.nextInt(255);
      int green = rnd.nextInt(255);
      Size size = MediaQuery.of(context).size;
      String initColor =
          ("0xff${red < 9 ? "0${red.toRadixString(16)}" : red.toRadixString(16)}${green < 9 ? "0${green.toRadixString(16)}" : green.toRadixString(16)}${blue < 9 ? "0${blue.toRadixString(16)}" : blue.toRadixString(16)}");

      debugPrint("$initColor red:$red green:$green blue:$blue ");

      width = rnd.nextInt(size.width.toInt()).toDouble();
      heigth = rnd.nextInt(size.height.toInt()).toDouble();

      if (width > size.width) {
        width = 100;
      }

      if (heigth > size.height) {
        heigth = 100;
      }

      color = Color(int.parse(initColor));
      borderRadius =
          BorderRadius.circular(double.parse(rnd.nextInt(100).toString()) + 1);
      setState(() {});
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ConstantElements.getAppbar("Animations"),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: width,
          height: heigth,
          decoration: BoxDecoration(borderRadius: borderRadius, color: color),
          // color: Colors.red,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => changeValues(context),
        child: const Icon(
          Icons.play_circle_fill_outlined,
          size: 35,
        ),
      ),
    );
  }
}
