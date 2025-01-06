import 'package:dota2_app/app/UI/home/home_screen.dart';
import 'package:flutter/material.dart';

class TempHomePage extends StatelessWidget {
  const TempHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: HomeScreen(),
    );
  }
}
