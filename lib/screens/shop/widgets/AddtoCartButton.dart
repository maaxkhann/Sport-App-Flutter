import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../app_constants/constant_textstyle.dart';

class AddtoCartButton extends StatelessWidget {
  final VoidCallback OnTap;
  const AddtoCartButton({super.key, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 15.0, bottom: 8),
      child: GestureDetector(
        onTap: OnTap,
        child: Container(
          height: Get.height * 0.06,
          width: Get.width * 0.33,
          decoration: BoxDecoration(
              color: Color(0xff1566C9),
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                'assets/shop/cart.svg',
                width: 18,
                height: 18,
              ),
              Text(
                "Add to cart",
                style: kHeading6,
              )
            ],
          ),
        ),
      ),
    );
  }
}
