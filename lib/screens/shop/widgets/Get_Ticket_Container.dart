import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../app_constants/constant_textstyle.dart';

class GetTicketContainer extends StatelessWidget {
  VoidCallback getTicketOnTap;
  GetTicketContainer({super.key, required this.getTicketOnTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: Get.width * 0.85,
          height: Get.height * 0.3,
          child: Stack(
            children: [
              Container(
                width: Get.width * 0.9,
                height: Get.height * 0.3,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xff246BFD), Color(0xff0C0C69)]),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18))),
              ),
              Positioned(
                top: 50,
                right: Get.width * 0.652,
                child: Image.asset(
                  'assets/shop/stadium.png',
                  height: Get.height * 0.1,
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset(
                  'assets/shop/preview6.png',
                  height: Get.height * 0.18,
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/shop/preview4.png',
                  height: Get.height * 0.21,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: Get.width * 0.75,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'UEFA Champions League Final',
                              style: kHeading6,
                            ),
                            Container(
                              width: Get.width * 0.18,
                              height: Get.height * 0.03,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('assets/shop/soccer.png'),
                                  Text(
                                    'Football',
                                    style: TextStyle(fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'PORTO 2021',
                          style: kHeading4,
                        ),
                        Text(
                          'ESTADIO DO DRAGAO',
                          style: kHeading8,
                        ),
                        Text(
                          'CHELSEA VS MANCHESTER CITY',
                          style: kHeading6,
                        ),
                        Text(
                          'Sunday. May 21, 2023 : 8:00pm CET',
                          style: kHeading8,
                        ),
                        SizedBox(
                          height: Get.height * 0.07,
                        ),
                        GestureDetector(
                          onTap: getTicketOnTap,
                          child: Container(
                            height: Get.height * 0.05,
                            width: Get.width * 0.35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color.fromARGB(255, 199, 207, 255)
                                    .withOpacity(0.75)),
                            child: Center(
                              child: Text(
                                'Get Ticket',
                                style: kHeading6,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 50,
          left: Get.width * 0.652,
          child: Image.asset(
            'assets/shop/stadium-1.png',
            height: Get.height * 0.1,
            fit: BoxFit.contain,
          ),
        )
      ],
    );
  }
}
