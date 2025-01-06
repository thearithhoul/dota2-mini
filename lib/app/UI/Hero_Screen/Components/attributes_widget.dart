import 'package:cached_network_image/cached_network_image.dart';
import 'package:dota2_app/app/Model/hero_detail/hero_detail_model.dart';
import 'package:dota2_app/util/image_contented.dart';
import 'package:flutter/material.dart';

import '../../../../util/fonts/my_text_style.dart';

class AttributesWidget extends StatefulWidget {
  final HeroDetailModel? detailModel;
  final String image;
  const AttributesWidget({super.key, this.detailModel, required this.image});

  @override
  State<AttributesWidget> createState() => _AttributesWidgetState();
}

class _AttributesWidgetState extends State<AttributesWidget> {
  @override
  Widget build(BuildContext context) {
    final heroDetail = widget.detailModel;
    return Container(
      padding: const EdgeInsets.all(6.0),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff121617),
            Color(0xff242627),
          ],
        ),
      ),
      child: Column(
        children: [
          Text(
            'ATTRIBUTES',
            style: MYTEXTSTYLE.mediumRoboto(fontType: FontType.titel),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: 120,
                    color: Colors.amber,
                    child: Image(
                      fit: BoxFit.fitWidth,
                      image: CachedNetworkImageProvider(widget.image),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 120,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff286323),
                          Color(0xff7AF03C),
                        ],
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '${heroDetail?.attirbutes.base_health.toInt()}',
                            style: MYTEXTSTYLE.mediumRoboto(
                                fontType: FontType.lable),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text(
                              '+${heroDetail?.attirbutes.bease_health_regen}',
                              style: MYTEXTSTYLE.mediumRoboto(
                                fontType: FontType.lable,
                                color: const Color(0xff286323),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 120,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff1056DB),
                          Color(0xff73F5FE),
                        ],
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '${heroDetail?.attirbutes.base_mana.toInt()}',
                            style: MYTEXTSTYLE.mediumRoboto(
                                fontType: FontType.lable),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text(
                              '+${heroDetail?.attirbutes.bease_mana_regen}',
                              style: MYTEXTSTYLE.mediumRoboto(
                                fontType: FontType.lable,
                                color: const Color(0xff1056DB),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _attBlock(
                      ImageContented.attStrenght,
                      '${heroDetail?.attirbutes.base_str.toInt()}',
                      '${heroDetail?.attirbutes.str_per_lvl}'),
                  _attBlock(
                      ImageContented.attAgility,
                      '${heroDetail?.attirbutes.base_agi.toInt()}',
                      '${heroDetail?.attirbutes.agi_per_lvl}'),
                  _attBlock(
                      ImageContented.attIntelligence,
                      '${heroDetail?.attirbutes.base_int.toInt()}',
                      '${heroDetail?.attirbutes.int_per_lvl}'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

_attBlock(String image, String mainState, String subState) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(width: 30, height: 30, fit: BoxFit.fill, image),
          Text(
            mainState,
            style: MYTEXTSTYLE.mediumRoboto(
              fontType: FontType.subtitle,
            ),
          ),
          Text(
            "+$subState",
            style: MYTEXTSTYLE.mediumRoboto(
              fontType: FontType.lable,
              color: const Color(0xffCECFCF),
            ),
          ),
        ],
      ),
    ),
  );
}
