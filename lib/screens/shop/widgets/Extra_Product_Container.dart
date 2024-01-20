import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/screens/shop/ShopProductDetailScreen.dart';

import '../../../app_constants/constant_textstyle.dart';

class ExtraProductContainer extends StatelessWidget {
  String wearingClass, productName, price, size, gender, img;
  ExtraProductContainer({
    super.key,
    required this.gender,
    required this.price,
    required this.productName,
    required this.size,
    required this.wearingClass,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
            return ShopProductDetailScreen();
          }));
        },
        child: Container(
          height: Get.height * 0.1,
          width: Get.width * 0.9,
          decoration: BoxDecoration(
              color: Color(0xff2B2B3D),
              borderRadius: BorderRadius.circular(18)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(img),
                Column(
                  children: [
                    Text(
                      productName,
                      style: kHeading6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          wearingClass,
                          style: kHeading6,
                        ),
                        SizedBox(
                          width: Get.width * 0.03,
                        ),
                        Text(
                          gender,
                          style: kHeading6,
                        ),
                        SizedBox(
                          width: Get.width * 0.03,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: Get.height * 0.03,
                            child: const RotatedBox(
                              quarterTurns: 15,
                              child: Divider(
                                height: 1,
                                thickness: 2,
                                color: Color(0xff8F90A6),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          size,
                          style: kHeading55,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.07,
                  child: const RotatedBox(
                    quarterTurns: 15,
                    child: Divider(
                      height: 1,
                      thickness: 2,
                      color: Color(0xff8F90A6),
                    ),
                  ),
                ),
                Text(
                  "\$$price",
                  style: kHeading4,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
