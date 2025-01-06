import 'package:dota2_app/app/Model/hero_detail/hero_detail_model.dart';
import 'package:dota2_app/app/UI/widgets/animate_progress_bar.dart';
import 'package:flutter/material.dart';

import '../../../../util/fonts/my_text_style.dart';

class RolesWidget extends StatefulWidget {
  final HeroDetailModel? heroDetailModel;
  const RolesWidget({super.key, required this.heroDetailModel});

  @override
  State<RolesWidget> createState() => _RolesWidgetState();
}

class _RolesWidgetState extends State<RolesWidget> {
  List<_HeroRole> heroRole = [];

  @override
  void initState() {
    final model = widget.heroDetailModel;
    heroRole = [
      _HeroRole(name: 'Carray', progress: model?.roles.carray.toInt() ?? 0),
      _HeroRole(name: 'Support', progress: model?.roles.support.toInt() ?? 0),
      _HeroRole(name: 'Nuker', progress: model?.roles.nuker.toInt() ?? 0),
      _HeroRole(name: 'Disabler', progress: model?.roles.disabler.toInt() ?? 0),
      _HeroRole(name: 'Jungler', progress: model?.roles.jungler.toInt() ?? 0),
      _HeroRole(name: 'Durable', progress: model?.roles.durable.toInt() ?? 0),
      _HeroRole(name: 'Escape', progress: model?.roles.escape.toInt() ?? 0),
      _HeroRole(name: 'Pusher', progress: model?.roles.pusher.toInt() ?? 0),
      _HeroRole(
          name: 'Initiator', progress: model?.roles.initiator.toInt() ?? 0),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0xff6D7375)),
        ),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ROLES',
            style: MYTEXTSTYLE.mediumRoboto(fontType: FontType.titel),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 4,
                mainAxisExtent: 30,
                crossAxisSpacing: 5),
            itemCount: heroRole.length,
            itemBuilder: (context, index) {
              final data = heroRole[index];
              return Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      data.name,
                      style: MYTEXTSTYLE.mediumRoboto(fontType: FontType.lable),
                    ),
                    AnimateProgressBar(progress: data.progress, width: 80)
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class _HeroRole {
  String name;
  int progress;

  _HeroRole({required this.name, required this.progress});
}
