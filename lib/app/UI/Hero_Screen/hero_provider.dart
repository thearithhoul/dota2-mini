import 'package:dota2_app/app/Model/hero_detail/hero_detail_model.dart';
import 'package:dota2_app/app/Model/result_state/result_state.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../Services/hero_detail_service.dart';

class HeroProvider extends ChangeNotifier {
  final _heroDetailService = HeroDetailService();
  final WebViewController webViewController = WebViewController()
    ..setBackgroundColor(Colors.transparent)
    ..setJavaScriptMode(JavaScriptMode.unrestricted);
  var resultState = const ResultState<HeroDetailModel>.idle();
  HeroDetailModel? heroDetailModel;

  Future<void> getHeroDetail(String heroName) async {
    resultState = const ResultState<HeroDetailModel>.loading();
    var api = await _heroDetailService.getHeroDetail(heroName);
    api.when(
      success: (data) {
        heroDetailModel = data;
        webViewController.loadHtmlString('''
    <!DOCTYPE html>
          <html>
            <body style="margin:0; padding:0; overflow:hidden; background:transparent;">
              <video preload="auto" autoplay loop muted playsinline style="width:100%; height:100%;" poster="${data.hero_assets.hero_idle_image_url}" >
                <source src="${data.hero_assets.hero_idle_vod_url}" type="video/webm">
              </video>
            </body>
          </html>''');
        Future.delayed(
          const Duration(milliseconds: 200),
          () {
            resultState = ResultState.data(data);
            notifyListeners();
          },
        );
      },
      failure: (error) {
        resultState = ResultState.error(error);
        notifyListeners();
      },
    );
  }
}
