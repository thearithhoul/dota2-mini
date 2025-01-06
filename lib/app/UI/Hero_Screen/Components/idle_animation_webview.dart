import 'package:dota2_app/app/Model/hero_detail/hero_detail_model.dart';
import 'package:dota2_app/app/UI/Hero_Screen/hero_provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:webview_flutter/webview_flutter.dart';

class IdleAnimationWebview extends StatefulWidget {
  final HeroDetailModel heroDetail;
  const IdleAnimationWebview({super.key, required this.heroDetail});

  @override
  State<IdleAnimationWebview> createState() => _IdleAnimationWebviewState();
}

class _IdleAnimationWebviewState extends State<IdleAnimationWebview>
    with SingleTickerProviderStateMixin {
  late AnimationController heroVodCt;
  late Animation<double> opHeroVod;
  late Animation<double> trHeroVod;
  @override
  void initState() {
    heroVodCt = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );

    opHeroVod = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(heroVodCt);

    trHeroVod = Tween<double>(
      begin: -100,
      end: 0,
    ).animate(heroVodCt);

    Future.delayed(
      const Duration(milliseconds: 100),
      () {
        heroVodCt.forward();
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    heroVodCt.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: AnimatedBuilder(
        animation: heroVodCt,
        builder: (context, child) => Transform.translate(
          offset: Offset(trHeroVod.value, 0),
          child: Opacity(
              opacity: opHeroVod.value,
              child: Consumer<HeroProvider>(
                builder: (context, value, child) => WebViewWidget(
                  controller: value.webViewController,
                ),
              )),
        ),
      ),
    );
  }
}
