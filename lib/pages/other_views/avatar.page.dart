import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 150,
        backgroundImage: NetworkImage(
            'https://www.gamerfocus.co/wp-content/uploads/2021/10/One-Piece-Stampede.jpg'),
      )),
    );
  }

  AppBar getAppbar() {
    return AppBar(
      title: const Text("Stan Lee"),
      actions: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: const CircleAvatar(
            child: Text("SL"),
          ),
        )
      ],
      centerTitle: true,
    );
  }
}
