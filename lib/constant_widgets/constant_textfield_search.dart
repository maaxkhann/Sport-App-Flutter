import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../screens/explore-articledetail/search_screen.dart';

class ConstantTextFieldSearch extends StatefulWidget {
  final String hintText;
  final String? suffixImage;
  final String? prefixImage;
  final BorderSide? borderSide;

  const ConstantTextFieldSearch(
      {Key? key,
      required this.hintText,
      this.suffixImage,
      this.prefixImage,
      this.borderSide})
      : super(key: key);

  @override
  State<ConstantTextFieldSearch> createState() =>
      _ConstantTextFieldSearchState();
}

class _ConstantTextFieldSearchState extends State<ConstantTextFieldSearch> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Color(0xFF65656B)),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Color(0xFF65656B)),
        filled: true,
        fillColor: const Color(0xFF222232),
        prefixIcon: widget.prefixImage != null
            ? InkWell(
                onTap: () {
                  Get.to(() => const SearchScreen());
                },
                child: SvgPicture.asset(
                  widget.prefixImage ?? '',
                  width: 16,
                  height: 16,
                  fit: BoxFit.scaleDown,
                  color: const Color(0xFF65656B),
                ),
              )
            : const Text(''),
        suffixIcon: InkWell(
          onTap: () {},
          child: SvgPicture.asset(
                widget.suffixImage ?? '',
                width: 16,
                height: 16,
                color: const Color(0xFF6B7588),
                fit: BoxFit.scaleDown,
              ) ??
              const Text(''),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: widget.borderSide ?? BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
