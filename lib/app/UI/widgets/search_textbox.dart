import 'package:dota2_app/util/fonts/my_text_style.dart';
import 'package:dota2_app/util/image_contented.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchTextboxWidget extends StatelessWidget {
  final TextEditingController controller;
  final void Function()? suffixOntap;
  final String hintText;

  final void Function(String)? onChanged;

  const SearchTextboxWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.suffixOntap,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      enableIMEPersonalizedLearning: true,
      maxLines: 1,
      onChanged: onChanged,
      style: MYTEXTSTYLE.lightRoboto(
          fontType: FontType.titel, color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: controller.text.isNotEmpty
            ? GestureDetector(
                onTap: suffixOntap, child: const Icon(Icons.cancel))
            : null,
        border: InputBorder.none,
        prefixIcon: SizedBox(
          width: 25,
          height: 25,
          child: Align(
            alignment: Alignment.centerLeft,
            child: SvgPicture.asset(ImageContented.searchIcon),
          ),
        ),
        // set the prefix icon constraints
        prefixIconConstraints: const BoxConstraints(
          minWidth: 35,
          minHeight: 35,
        ),
        contentPadding: EdgeInsets.zero,
        hintStyle: MYTEXTSTYLE.lightRoboto(
            fontType: FontType.lable, color: Colors.white54),
      ),
    );
  }
}
