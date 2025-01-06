import 'package:flutter/material.dart';

class AnimatedLoadingHeroGridview extends StatefulWidget {
  const AnimatedLoadingHeroGridview({super.key});

  @override
  State<AnimatedLoadingHeroGridview> createState() =>
      _AnimatedLoadingHeroGridviewState();
}

class _AnimatedLoadingHeroGridviewState
    extends State<AnimatedLoadingHeroGridview> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opAnimate;
  late Animation<double> _tbAnimate;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _tbAnimate = Tween<double>(
      begin: 50,
      end: 0,
    ).animate(_controller);
    _opAnimate = Tween<double>(
      begin: 0,
      end: 1.0,
    ).animate(_controller);

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _tbAnimate,
      builder: (context, child) => Transform.translate(
        offset: Offset(0, _tbAnimate.value),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: 65,
            mainAxisSpacing: 14,
            crossAxisSpacing: 14,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return AnimatedBuilder(
              animation: _opAnimate,
              builder: (context, child) {
                return Opacity(
                  opacity: _opAnimate.value,
                  child: Container(
                    height: 60,
                    width: 100,
                    color: Colors.grey,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
