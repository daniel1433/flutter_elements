import 'package:curso_fernando/theme/app_theme.dart';
import 'package:flutter/material.dart';

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: Colors.white38, borderRadius: BorderRadius.circular(50.0)),
        alignment: Alignment.center,
        width: 50,
        height: 50,
        child: CircularProgressIndicator(
          color: AppTheme.primary,
        ),
      ),
    );
  }
}
