import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';

class AddtoWishlistButton extends StatelessWidget {
  VoidCallback OnTap;
  AddtoWishlistButton({super.key, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 8),
      child: GestureDetector(
        onTap: OnTap,
        child: Container(
          height: Get.height * 0.06,
          width: Get.width * 0.4,
          decoration: BoxDecoration(
              color: Color(0xff6B7588),
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                'assets/shop/heart.svg',
                width: 18,
                height: 18,
              ),
              Text(
                "Add to wishlist",
                style: kHeading7,
              )
            ],
          ),
        ),
      ),
    );
  }
}
