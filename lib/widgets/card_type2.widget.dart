import 'package:curso_fernando/theme/app_theme.dart';
import 'package:flutter/material.dart';

// import 'package:curso_fernando/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String description;

  const CustomCardType2(
      {super.key, required this.imageUrl, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Parametro para recortar el contenido
      clipBehavior: Clip.antiAlias,
      // Borde
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: AppTheme.primary.withOpacity(0.5),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/images/loader.gif'),
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(description),
          )
        ],
      ),
    );
  }
}
