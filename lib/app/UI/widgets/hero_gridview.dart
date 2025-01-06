import 'package:cached_network_image/cached_network_image.dart';
import 'package:dota2_app/app/Model/hero_model.dart';
import 'package:dota2_app/app/UI/Hero_Screen/hero_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HeroGridviewWidget extends StatefulWidget {
  final List<HeroModel> herosList;
  const HeroGridviewWidget({super.key, required this.herosList});

  @override
  State<HeroGridviewWidget> createState() => _HeroGridviewWidgetState();
}

class _HeroGridviewWidgetState extends State<HeroGridviewWidget>
    with SingleTickerProviderStateMixin {
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
          itemCount: widget.herosList.length,
          itemBuilder: (context, index) {
            return AnimatedBuilder(
              animation: _opAnimate,
              builder: (context, child) {
                final obj = widget.herosList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return HeroScreen(
                          heromodel: widget.herosList[index],
                        );
                      },
                    ));
                    // MyNavigator().pushName(
                    //   RouteName.heroRoute,
                    //   arg: widget.herosList[index],
                    // );
                  },
                  child: Hero(
                    tag: obj.hero_name,
                    child: Opacity(
                      opacity: _opAnimate.value,
                      child: SizedBox(
                        height: 60,
                        width: 100,
                        child: Image(
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            } else {
                              return Center(
                                child: Lottie.asset(
                                    'assets/lattie/Animation-1735028554964.json'),
                              );
                            }
                          },
                          opacity: _opAnimate,
                          image: CachedNetworkImageProvider(
                            obj.image_url,
                          ),
                        ),
                      ),
                    ),
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
