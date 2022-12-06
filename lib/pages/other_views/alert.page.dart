import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          ElevatedButton(
              onPressed: () => displayDialogAndroid(context),
              child: const Text("Mostrar alerta Android")),
          ElevatedButton(
              onPressed: () => displayDialogIOS(context),
              child: const Text("Mostrar alerta IOS")),
          Platform.isAndroid
              ? ElevatedButton(
                  onPressed: () => displayDialogAndroid(context),
                  child: const Text("Mostrar alerta Android"))
              : ElevatedButton(
                  onPressed: () => displayDialogIOS(context),
                  child: const Text("Mostrar alerta IOS"))
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.close,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  AppBar getAppbar() {
    return AppBar(
      title: const Text("Alerta"),
      centerTitle: true,
    );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false, // Permite cerrar el cuadro de dialogo
        context: context,
        builder: (context) => AlertDialog(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              title: const Text("Alerta Android"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text("Este es el contenido de la alerta"),
                  SizedBox(
                    height: 10,
                  ),
                  FlutterLogo(
                    size: 50,
                  )
                ],
              ),
              actions: [
                // TextButton(onPressed: () {}, child: const Text("Ok")),
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Cancelar"))
              ],
            ));
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
                title: const Text("Alerta IOS"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text("Este es el contenido de la alerta"),
                    SizedBox(
                      height: 10,
                    ),
                    FlutterLogo(
                      size: 50,
                    )
                  ],
                ),
                actions: [
                  // TextButton(onPressed: () {}, child: const Text("Ok")),
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("Cancelar"))
                ]));
  }
}
