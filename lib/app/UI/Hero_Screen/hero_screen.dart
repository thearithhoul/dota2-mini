import 'package:dota2_app/app/UI/Hero_Screen/Components/attributes_widget.dart';
import 'package:dota2_app/app/UI/Hero_Screen/Components/animated_hero_detail_text_.dart';
import 'package:dota2_app/app/UI/Hero_Screen/Components/idle_animation_webview.dart';
import 'package:dota2_app/app/UI/Hero_Screen/Components/roles_widget.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../util/image_contented.dart';
import '../../Model/hero_model.dart';
import '../widgets/loading_lattie.dart';
import 'hero_provider.dart';

class HeroScreen extends StatefulWidget {
  final HeroModel heromodel;
  const HeroScreen({super.key, required this.heromodel});

  @override
  State<HeroScreen> createState() => _HeroScreenState();
}

class _HeroScreenState extends State<HeroScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> opText;
  late Animation<double> trText;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );

    opText = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(animationController);

    trText = Tween<double>(
      begin: 100,
      end: 0,
    ).animate(animationController);

    final provider = Provider.of<HeroProvider>(context, listen: false);
    provider.getHeroDetail(widget.heromodel.hero_name);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final hero = widget.heromodel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          filterQuality: FilterQuality.high,
          image: AssetImage(ImageContented.backgroundImage),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(child: Consumer<HeroProvider>(
          builder: (context, value, child) {
            return Hero(
                tag: hero.hero_name,
                child: SafeArea(
                  child: value.resultState.when(
                    idle: () => Container(),
                    loading: () => const Center(child: LoadingLattie()),
                    data: (data) {
                      animationController.forward();
                      // Future.delayed(
                      //   const Duration(milliseconds: 700),
                      //   () {

                      //   },
                      // );
                      return Column(
                        children: [
                          // Stack Top
                          SizedBox(
                            height: 600,
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 500,
                                  child: IdleAnimationWebview(heroDetail: data),
                                ),
                                Positioned(
                                    top: 200,
                                    left: 0,
                                    right: 0,
                                    bottom: 0,
                                    child: AnimatedBuilder(
                                      animation: animationController,
                                      builder: (context, child) {
                                        return Opacity(
                                          opacity: opText.value,
                                          child: Transform.translate(
                                            offset: Offset(0, trText.value),
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  left: 6,
                                                  right: 6,
                                                  bottom: 20),
                                              decoration: const BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.bottomCenter,
                                                  end: Alignment.topCenter,
                                                  colors: [
                                                    Colors.black,
                                                    Colors.transparent,
                                                    Colors.transparent
                                                  ],
                                                ),
                                              ),
                                              child:
                                                  AnimatedHeroDetailTextWidget(
                                                      heroModel: hero),
                                            ),
                                          ),
                                        );
                                      },
                                    )),
                              ],
                            ),
                          ),

                          // The rest of the page
                          AttributesWidget(
                            image: hero.image_url,
                            detailModel: data,
                          ),

                          RolesWidget(heroDetailModel: data),
                          const SizedBox(
                            height: 60,
                          )
                        ],
                      );
                    },
                    error: (error) => Container(),
                  ),
                ));
          },
        )),
      ),
    );
  }
}
