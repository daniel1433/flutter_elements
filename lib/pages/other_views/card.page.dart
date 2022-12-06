import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getAppbar(),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          children: getCards(),
        ));
  }

  List<Widget> getCards() {
    List<Map<String, String>> dataCards = [
      {
        "image": 'https://images6.alphacoders.com/856/thumb-1920-856912.jpg',
        "description": "Ducati Monster."
      },
      {
        "image": 'https://wallpaperaccess.com/full/2047429.jpg',
        "description": "Ducati Diavel."
      },
      {
        "image":
            'https://i.pinimg.com/originals/e6/f6/84/e6f6847f9bc7341fc0afa68d9361a9e7.jpg',
        "description": "Kawasaki H2R."
      },
      {
        "image":
            'https://4kwallpapers.com/images/wallpapers/bmw-s1000rr-sports-bikes-5k-4480x2520-6353.jpg',
        "description": "BMW S1000rr."
      },
      {
        "image":
            'https://i.pinimg.com/originals/85/b7/3c/85b73cedfe31c958f2348f76d1cb31ba.jpg',
        "description": "CBR 1000."
      },
      {
        "image": 'https://images2.alphacoders.com/922/922958.jpg',
        "description": "GSXR 1000."
      },
      {
        "image":
            'https://img.besthqwallpapers.com/Uploads/9-11-2018/71278/kawasaki-ninja-zx-10r-4k-street-2018-bikes-superbikes.jpg',
        "description": "Kawasaki ZX10R."
      },
      {
        "image":
            'https://4kwallpapers.com/images/wallpapers/ktm-1290-super-duke-r-evo-5k-2022-2732x2732-6897.jpg',
        "description": "Super Duke 1290."
      },
    ];

    List<Widget> result = [
      const CustomCardType1(),
      ...(dataCards.map((e) => CustomCardType2(
          imageUrl: e["image"] ?? "",
          description: e["description"] ?? ""))).toList()
    ];

    return result;
  }

  AppBar getAppbar() {
    return AppBar(
      title: const Text("Card Widget"),
      centerTitle: true,
    );
  }
}
