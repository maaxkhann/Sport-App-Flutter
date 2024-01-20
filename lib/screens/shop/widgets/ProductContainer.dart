import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../app_constants/constant_textstyle.dart';
import '../ShopProductDetailScreen.dart';

class ProductContainer extends StatelessWidget {
  final Color? color;
  String img, companyName, productName, price;
  ProductContainer({
    super.key,
    required this.companyName,
    required this.productName,
    required this.price,
    required this.img,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
            return ShopProductDetailScreen();
          }));
        },
        child: Container(
          height: Get.width * 0.34,
          width: Get.width * 0.33,
          decoration: BoxDecoration(
              color: color == null ? Color(0xff2B2B3D) : color,
              borderRadius: BorderRadius.circular(18)),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: RotatedBox(
                  quarterTurns: 15,
                  child: Text(
                    companyName,
                    style: kHeading8,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(img),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    productName,
                    style: kHeading8,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/shop/Vector.svg',
                      width: 13,
                      height: 13,
                    ),
                    SvgPicture.asset(
                      'assets/shop/cart.svg',
                      width: 15,
                      height: 15,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: Get.height * 0.031,
                    width: Get.width * 0.08,
                    decoration: BoxDecoration(
                        color: Color(0xff6B7588),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                      "\$${price}",
                      style: kHeading8,
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
