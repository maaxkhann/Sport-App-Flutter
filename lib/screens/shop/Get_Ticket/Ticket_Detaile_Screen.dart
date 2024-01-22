import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sports_app/screens/shop/Get_Ticket/Make_Payment_SCreen.dart';

import '../../../app_constants/constant_textstyle.dart';
import '../widgets/GetTicketScreeenAppBar.dart';

class TicketDetailScreen extends StatefulWidget {
  const TicketDetailScreen({super.key});

  @override
  State<TicketDetailScreen> createState() => _TicketDetailScreenState();
}

class _TicketDetailScreenState extends State<TicketDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GetTicketScreenAppBar(appBartxt: "Ticket Details"),
      body: Center(
        child: Container(
          height: Get.height * 0.73,
          width: Get.width * 0.85,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: const Color(0xff1E1E3E)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                incomingMatchContainer(),
                sizedBox(20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Get.width * 0.35,
                        child: const Text(
                          'Ticket Type',
                          style: kHeading55,
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.3,
                        child: const Text(
                          'Price(\$)',
                          style: kHeading55,
                        ),
                      )
                    ],
                  ),
                ),
                sizedBox(10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Get.width * 0.35,
                        child: const Text(
                          'Adult Below 60',
                          style: kHeading6,
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.3,
                        child: const Text(
                          '\$ 25',
                          style: kHeading6,
                        ),
                      )
                    ],
                  ),
                ),
                sizedBox(10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Get.width * 0.3,
                        child: const Text(
                          'Quantity',
                          style: kHeading55,
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.3,
                        child: const Text(
                          '1',
                          style: kHeading55,
                        ),
                      )
                    ],
                  ),
                ),
                sizedBox(10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Get.width * 0.3,
                        child: const Text(
                          'Allocation',
                          style: kHeading55,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: Get.width * 0.2,
                        child: const Text(
                          'Access: 2',
                          style: kHeading6,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: Get.width * 0.2,
                        child: const Text(
                          'Row: 3',
                          style: kHeading6,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: Get.width * 0.2,
                        child: const Text(
                          'Seat: 52',
                          style: kHeading6,
                        ),
                      ),
                    ),
                  ],
                ),
                sizedBox(30),
                customButton(() {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    return const MakePaymentScreen();
                  }));
                }, const Color(0xff1566C9), "Proceed To Payment", kHeading55),
                sizedBox(10),
                customButton(
                  () {},
                  const Color(0xff8F90A6),
                  "Review Ticket",
                  const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff3A3A3C),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget sizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget incomingMatchContainer() {
    return Container(
      height: Get.height * 0.15,
      width: Get.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color.fromARGB(255, 211, 214, 245)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
              width: Get.width * 0.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/shop/idezia.png',
                    width: Get.width * 0.08,
                  ),
                  const Text('Fulham')
                ],
              ),
            ),
            const Text('vs'),
            SizedBox(
              width: Get.width * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/shop/Wolverhampton.png',
                    width: Get.width * 0.08,
                  ),
                  const Text('Wolverhampton')
                ],
              ),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: Get.width * 0.3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/shop/calendar.svg',
                      fit: BoxFit.contain,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '9 May 2021',
                          style: TextStyle(fontSize: 13),
                        ),
                        Text('19 : 45'),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: Get.width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/shop/ground.svg',
                      fit: BoxFit.contain,
                    ),
                    const Text(
                      'Craven Cottage',
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget customButton(
      VoidCallback tap, Color color, String txt, TextStyle txtStyle) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        height: Get.height * 0.06,
        width: Get.width * 0.6,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(25)),
        child: Center(
          child: Text(
            txt,
            style: txtStyle,
          ),
        ),
      ),
    );
  }
}
