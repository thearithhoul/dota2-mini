import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarItem extends StatelessWidget {
  final String imageSvg;
  final double width;
  final double height;
  final void Function()? ontap;
  final bool isSeleted;

  const BottomNavBarItem({
    super.key,
    required this.imageSvg,
    required this.width,
    required this.height,
    this.ontap,
    this.isSeleted = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imageSvg,
              width: 30,
              height: 30,
            ),
            const SizedBox(
              height: 6,
            ),
            Visibility(
              visible: isSeleted,
              child: Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
