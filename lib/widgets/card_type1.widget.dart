import 'package:curso_fernando/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: const Text("Soy el titulo"),
            leading: Icon(
              Icons.camera,
              color: AppTheme.secondary,
            ),
            subtitle: const Text(
                "Consequat adipisicing dolore enim eiusmod veniam aliquip pariatur sit ad. Laboris ipsum cillum do in et nostrud nulla reprehenderit. Voluptate nisi velit anim aliqua irure adipisicing mollit pariatur eu ut minim tempor. Exercitation est veniam magna dolore reprehenderit magna sit non aliqua nisi. Aliquip deserunt minim commodo pariatur dolor officia aute dolore ipsum ea."),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text("Cancel")),
                TextButton(onPressed: () {}, child: const Text("Ok")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
