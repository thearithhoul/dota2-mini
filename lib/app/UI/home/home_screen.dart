import 'package:dota2_app/app/UI/home/home_provider.dart';
import 'package:dota2_app/app/UI/widgets/animated_loading_hero_gridview.dart';
import 'package:dota2_app/app/UI/widgets/complexity_block.dart';
import 'package:dota2_app/app/UI/widgets/search_textbox.dart';
import 'package:dota2_app/util/fonts/my_text_style.dart';
import 'package:dota2_app/util/image_contented.dart';
import 'package:dota2_app/app/UI/widgets/attribute_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/hero_gridview.dart';
import '../widgets/loading_lattie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  late TextEditingController txtController;

  @override
  void initState() {
    txtController = TextEditingController();
    final provider = Provider.of<HomeProvider>(context, listen: false);
    provider.getListHero();

    _scrollController.addListener(
      () {
        if (_scrollController.position.pixels >=
                _scrollController.position.maxScrollExtent &&
            provider.hasMore) {
          provider.paginationFunc();
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    txtController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        body: SingleChildScrollView(
          controller: _scrollController,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Consumer<HomeProvider>(
                builder: (context, value, child) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: const Color(0xffD9D9D9),
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(ImageContented.homePageBanner),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 14.0),
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: const Color(0xff2D3539),
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buillAttributeBlock(value),
                            _buildComplexityBlock(value),
                          ],
                        ),
                      ),
                      _buildSearchblock(value, txtController),
                      const SizedBox(
                        height: 14,
                      ),
                      _buildHerosGrid(value),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buillAttributeBlock(HomeProvider value) {
  List<Attribute> attributes = [
    Attribute(name: 'agility', image: ImageContented.attAgility),
    Attribute(name: 'intelligence', image: ImageContented.attIntelligence),
    Attribute(name: "strength", image: ImageContented.attStrenght),
    Attribute(name: "Universal", image: ImageContented.attUniversal),
  ];

  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text('ATTRIBUTE',
          style: MYTEXTSTYLE.mediumRoboto(
              fontType: FontType.titel, color: Colors.white)),
      Row(
          children: List.generate(
        4,
        (index) {
          return GestureDetector(
            onTap: () => value.attributeSelectFunc(attributes[index].name),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: AttributeItemWidget(
                size: const Size(40, 40),
                isSelect: value.attributeSelect == attributes[index].name,
                image: attributes[index].image,
              ),
            ),
          );
        },
      )),
    ],
  );
}

Widget _buildComplexityBlock(HomeProvider value) {
  return Padding(
    padding: const EdgeInsets.only(top: 14),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'COMPLEXITY',
          style: MYTEXTSTYLE.mediumRoboto(
              fontType: FontType.titel, color: Colors.white),
        ),
        Row(
          children: List.generate(
            3,
            (index) {
              return GestureDetector(
                onTap: () => value.complexitySelectFunc(index),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ComplexityBlockWidget(
                      size: const Size(40, 40),
                      isSelect: value.complexitySelect >= index),
                ),
              );
            },
          ),
        )
      ],
    ),
  );
}

Widget _buildSearchblock(HomeProvider value, TextEditingController controller) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 14.0),
    height: 40,
    width: 250,
    decoration: const BoxDecoration(
      color: Color(0xff25282A),
    ),
    child: Center(
      child: SearchTextboxWidget(
          onChanged: (text) {
            value.searchFunc(text);
          },
          suffixOntap: () {
            controller.clear();
            value.searchFunc('');
          },
          controller: controller,
          hintText: 'FILTER HEROES'),
    ),
  );
}

Widget _buildHerosGrid(HomeProvider value) {
  return value.resultState.when(
    idle: () => const AnimatedLoadingHeroGridview(),
    loading: () => const LoadingLattie(),
    data: (data) => HeroGridviewWidget(
      herosList: data,
    ),
    error: (error) => SizedBox(
      child: Text(error.toString()),
    ),
  );
}
