import 'package:dota2_app/app/Model/hero_model.dart';

import 'package:dota2_app/app/func/switch_image_func.dart';
import 'package:dota2_app/util/fonts/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnimatedHeroDetailTextWidget extends StatefulWidget {
  final HeroModel heroModel;
  const AnimatedHeroDetailTextWidget({super.key, required this.heroModel});

  @override
  State<AnimatedHeroDetailTextWidget> createState() =>
      _AnimatedHeroDetailTextWidgetState();
}

class _AnimatedHeroDetailTextWidgetState
    extends State<AnimatedHeroDetailTextWidget>
    with SingleTickerProviderStateMixin {
  int maxLine = 5;

  late AnimationController mainCt;
  late Animation<double> opDesp;

  void runAnimation() async {
    await mainCt.forward();
    if (mainCt.isCompleted) {
      mainCt.reverse();
    }
  }

  void toggleReadme() {
    if (maxLine == 5) {
      maxLine = 100;

      runAnimation();
    } else {
      maxLine = 5;

      runAnimation();
    }
  }

  @override
  void initState() {
    mainCt = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    opDesp = Tween<double>(begin: 1, end: 0.7)
        .animate(CurvedAnimation(parent: mainCt, curve: Curves.easeIn));

    super.initState();
  }

  @override
  void dispose() {
    mainCt.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final heroModel = widget.heroModel;
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Top title
          _topTitle(heroModel.hero_name, heroModel.hero_type.toUpperCase(),
              heroModel.hero_type, heroModel.hero_quotes),
          const SizedBox(
            height: 6,
          ),
          AnimatedBuilder(
            animation: opDesp,
            builder: (context, child) {
              return FadeTransition(
                opacity: opDesp,
                child: SizedBox(
                  height: maxLine > 10 ? 250 : null,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          heroModel.description,
                          maxLines: maxLine,
                          style: MYTEXTSTYLE.mediumRoboto(
                              fontType: FontType.subtitle, color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              toggleReadme();
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              'Read Full History',
                              style: MYTEXTSTYLE.mediumRoboto(
                                color: const Color(0xff8a8a8a),
                                fontType: FontType.lable,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          // bottom Text
          Visibility(
            visible: maxLine <= 10,
            child: _bottomText(heroModel),
          )
        ],
      ),
    );
  }
}

_topTitle(
  String heroName,
  String title,
  String heroAtt,
  String heroQuotes,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
            width: 25,
            child: Image.asset(
              SwitchImageFunc().getSwitchHeroAttributeImage(heroAtt),
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            title,
            style: MYTEXTSTYLE.mediumRoboto(
                fontType: FontType.lable, color: Colors.white),
          )
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 6,
        ),
        child: Text(
          heroName.toUpperCase(),
          style: MYTEXTSTYLE.boldRoboto(fontType: FontType.large),
        ),
      ),
      SizedBox(
        width: 300,
        child: Text(
          maxLines: 2,
          heroQuotes.toUpperCase(),
          style: MYTEXTSTYLE.mediumRoboto(
              fontType: FontType.subtitle, color: const Color(0xffa5e0f3)),
        ),
      ),
    ],
  );
}

_bottomText(HeroModel hero) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'ATTACK TYPE',
        style: MYTEXTSTYLE.mediumRoboto(fontType: FontType.subtitle),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Row(
          children: [
            SvgPicture.asset(
              width: 20,
              height: 20,
              fit: BoxFit.fill,
              SwitchImageFunc().getSwitchHeroAttackTypeImage(
                hero.attack_type.toLowerCase(),
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              hero.attack_type.toUpperCase(),
              style: MYTEXTSTYLE.mediumRoboto(fontType: FontType.lable),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      Text(
        'COMPLEXITY',
        style: MYTEXTSTYLE.mediumRoboto(fontType: FontType.subtitle),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Row(
          children: List.generate(
            3,
            (index) => Padding(
              padding: const EdgeInsets.only(right: 8),
              child: MyComplexityBlock(
                isColor: hero.complexity_lvl >= index + 1,
              ),
            ),
          ),
        ),
      )
    ],
  );
}

class MyComplexityBlock extends StatelessWidget {
  final bool isColor;
  const MyComplexityBlock({super.key, required this.isColor});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(23, 23),
      painter: MySubCustomPainter(
        color: isColor ? Colors.white : const Color(0xff353D42),
        strokeColor: isColor ? const Color(0xff353D42) : Colors.white,
      ),
    );
  }
}

class MySubCustomPainter extends CustomPainter {
  final Color strokeColor;
  final Color color;

  MySubCustomPainter({
    required this.color,
    this.strokeColor = Colors.white,
  });
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color // Set the fill color of the shape
      ..style = PaintingStyle.fill;

    // Paint for the outline
    Paint outlinePaint = Paint()
      ..color = strokeColor
      ..strokeWidth = 2.0 // Outline thickness
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    // Define the path for the shape
    final path = Path();

    path.moveTo(size.width * 0.5, 0); // Move to top center
    path.lineTo(size.width, size.height * 0.5); // Line to bottom right
    path.lineTo(size.width * 0.5, size.height); // Line to bottom center
    path.lineTo(0, size.height * 0.5); // Line to bottom left
    path.close(); // Close the path

    path.close();
    canvas.drawPath(path, outlinePaint);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
