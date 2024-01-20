import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/screens/shop/Get_Ticket_Screen.dart';
import 'package:sports_app/screens/shop/widgets/AppBar.dart';
import 'package:sports_app/screens/shop/widgets/Extra_Product_Container.dart';
import 'package:sports_app/screens/shop/widgets/Get_Ticket_Container.dart';
import 'package:sports_app/screens/shop/widgets/ProductContainer.dart';

import '../../app_constants/constant_textstyle.dart';
import 'widgets/SearchRow.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              ShopAppBar(),
              SizedBox(
                height: Get.height * 0.05,
              ),
              SerachRow(),
              SizedBox(
                height: Get.height * 0.05,
              ),
              GetTicketContainer(
                getTicketOnTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    return GetTicketScreen();
                  }));
                },
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recomended",
                      style: kHeading3,
                    ),
                    Image.asset('assets/shop/arrow.png')
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductContainer(
                      companyName: 'Phoenix',
                      productName: 'Fastbreak Jersey',
                      price: '15',
                      img: 'assets/shop/product.png',
                    ),
                    ProductContainer(
                      companyName: 'Sussex SHarks',
                      productName: '22/23 120 kit',
                      price: '15',
                      img: 'assets/shop/image246.png',
                    ),
                    ProductContainer(
                      companyName: 'Chelsea FC',
                      productName: '22/23 Home kit',
                      price: '15',
                      img: 'assets/shop/image243.png',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "More",
                      style: kHeading3,
                    ),
                    Image.asset('assets/shop/arrow.png')
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ExtraProductContainer(
                      gender: 'Adult Male',
                      price: '15',
                      productName: 'Chelsea FC 2022/2023 Kit',
                      size: 'XXL',
                      wearingClass: 'Home',
                      img: 'assets/shop/image243.png',
                    ),
                    ExtraProductContainer(
                      gender: 'Adult Male',
                      price: '15',
                      productName: 'Chelsea FC 2022/2023 Kit',
                      size: 'XXL',
                      wearingClass: 'Home',
                      img: 'assets/shop/image243.png',
                    ),
                    ExtraProductContainer(
                      gender: 'Adult Male',
                      price: '15',
                      productName: 'Chelsea FC 2022/2023 Kit',
                      size: 'XXL',
                      wearingClass: 'Home',
                      img: 'assets/shop/image243.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
