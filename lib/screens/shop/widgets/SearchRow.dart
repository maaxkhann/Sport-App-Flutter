import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constant_widgets/constant_textfield_search.dart';

class SerachRow extends StatelessWidget {
  const SerachRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: Get.width * 0.7,
          child: const ConstantTextFieldSearch(
            hintText: 'Search your product',
            prefixImage: 'assets/common-icons/search.svg',
          ),
        ),
        Image.asset('assets/shop/Vector.png')
      ],
    );
  }
}
