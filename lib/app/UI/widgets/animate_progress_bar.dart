import 'package:flutter/material.dart';

class AnimateProgressBar extends StatelessWidget {
  final int progress;
  final double width;

  const AnimateProgressBar(
      {super.key, required this.progress, required this.width});

  @override
  Widget build(BuildContext context) {
    double percentP = (progress / 5);
    return Container(
      width: width,
      height: 5,
      decoration: const BoxDecoration(
        color: Color(0xff4c4c4c), // Background color
      ),
      child: Stack(
        children: [
          FractionallySizedBox(
            widthFactor: percentP,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer,
                    color: Color(0xff427ed1),
                  ),
                  BoxShadow(
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer,
                    color: Color(0xff427ed1),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
