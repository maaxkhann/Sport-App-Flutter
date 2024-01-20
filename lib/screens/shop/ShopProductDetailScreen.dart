import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/screens/shop/widgets/Add_to_Wishlist_Button.dart';
import 'package:sports_app/screens/shop/widgets/AddtoCartButton.dart';

import '../../app_constants/constant_textstyle.dart';
import 'widgets/AppBar.dart';
import 'widgets/ProductContainer.dart';

class ShopProductDetailScreen extends StatefulWidget {
  const ShopProductDetailScreen({super.key});

  @override
  State<ShopProductDetailScreen> createState() =>
      _ShopProductDetailScreenState();
}

class _ShopProductDetailScreenState extends State<ShopProductDetailScreen> {
  int quantityofProduct = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShopAppBar(),
              Container(
                width: Get.width * 0.9,
                padding: const EdgeInsets.all(15.0),
                margin: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Color(0xff2B2B3D),
                    borderRadius: BorderRadius.circular(18)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/shop/simple-icons_nike.png'),
                            SizedBox(
                              height: Get.height * 0.03,
                            ),
                            Image.asset('assets/shop/chelsea.png'),
                            Padding(
                              padding: EdgeInsets.only(top: Get.height * 0.1),
                              child: Text(
                                "\$15",
                                style: kHeading4,
                              ),
                            )
                          ],
                        ),
                        Image.asset(
                          'assets/shop/image243.png',
                          height: Get.height * 0.3,
                          fit: BoxFit.contain,
                        ),
                        Column(
                          children: [
                            Container(
                              height: Get.height * 0.08,
                              width: Get.width * 0.1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                border: Border.all(
                                  color: Color(0xff6B7588),
                                ),
                              ),
                              child: Image.asset('assets/shop/image243.png'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: Get.height * 0.08,
                              width: Get.width * 0.1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                border: Border.all(
                                  color: Color(0xff6B7588),
                                ),
                              ),
                              child: Image.asset('assets/shop/image243.png'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: Get.height * 0.08,
                              width: Get.width * 0.1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                border: Border.all(
                                  color: Color(0xff6B7588),
                                ),
                              ),
                              child: Image.asset('assets/shop/image243.png'),
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(
                      'Chelsea Home Stadium Shirt 2022-23',
                      style: kHeading4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        'Discription',
                        style: kHeading55,
                      ),
                    ),
                    Text(
                      'Like other shirts from our Stadium collection, this one pairs replica design details with sweat-wicking technology to give you a game-ready look inspired by your favourite team. ',
                      style: kHeading6,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Row(
                        children: [
                          Text(
                            'Size',
                            style: kHeading55,
                          ),
                          sizeContainer("S"),
                          sizeContainer("M"),
                          sizeContainer("XL"),
                          sizeContainer("L"),
                          sizeContainer("XXL"),
                          sizeContainer("3XL"),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Quantity',
                          style: kHeading55,
                        ),
                        SizedBox(
                          width: Get.width * 0.2,
                        ),
                        quantityController()
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Related",
                            style: kHeading4,
                          ),
                          Image.asset('assets/shop/arrow.png')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProductContainer(
                              color: Color(0xff181829),
                              companyName: 'Phoenix',
                              productName: 'Fastbreak Jersey',
                              price: '15',
                              img: 'assets/shop/product.png',
                            ),
                            ProductContainer(
                              color: Color(0xff181829),
                              companyName: 'Sussex SHarks',
                              productName: '22/23 120 kit',
                              price: '15',
                              img: 'assets/shop/image246.png',
                            ),
                            ProductContainer(
                              color: Color(0xff181829),
                              companyName: 'Chelsea FC',
                              productName: '22/23 Home kit',
                              price: '15',
                              img: 'assets/shop/image243.png',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AddtoWishlistButton(OnTap: () {}),
                        AddtoCartButton(OnTap: () {})
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget sizeContainer(String txt) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            txt,
            style: kHeading7,
          ),
        ),
      ),
      height: Get.height * 0.04,
      decoration: BoxDecoration(border: Border.all(color: Color(0xff6B7588))),
    );
  }

  Widget quantityController() {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  quantityofProduct = quantityofProduct + 1;
                  setState(() {});
                },
                child: Icon(
                  Icons.add,
                  size: 15,
                  color: Color(0xff6B7588),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Text(
                  quantityofProduct.toString(),
                  style: kHeading6,
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (quantityofProduct > 0) {
                    quantityofProduct = quantityofProduct - 1;
                    setState(() {});
                  }
                },
                child: Icon(
                  Icons.remove,
                  size: 15,
                  color: Color(0xff6B7588),
                ),
              )
            ],
          ),
        ),
      ),
      height: Get.height * 0.04,
      decoration: BoxDecoration(border: Border.all(color: Color(0xff6B7588))),
    );
  }
}
