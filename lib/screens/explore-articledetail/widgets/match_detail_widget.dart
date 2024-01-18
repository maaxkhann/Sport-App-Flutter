import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MatchDetailContainer extends StatelessWidget {
  final String image1;
  final String image2;
  final String team1;
  final String team2;
  final String team1Goals;
  final String team2Goals;

  const MatchDetailContainer({
    super.key,
    required this.image1,
    required this.image2,
    required this.team1,
    required this.team2,
    required this.team1Goals,
    required this.team2Goals,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: Get.height * 0.1,
            width: Get.width * 0.76,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
              color: Color(0xFF2B2B3D),
            ),
            child: FittedBox(
              child: Row(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 36,
                              width: 36,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF222232),
                              ),
                              child: Image.asset(
                                image1,
                              ),
                            ),
                            Positioned(
                              left: 10,
                              child: Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 2.0,
                                    color: const Color(0xFF181829),
                                  ),
                                  color: const Color(0xFF222232),
                                ),
                                child: Image.asset(
                                  image2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(team1,
                              style: const TextStyle(
                                fontSize: 14,
                                //fontFamily = FontFamily(Font(R.font.source sans pro)),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              )),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text("vs",
                              style: TextStyle(
                                fontSize: 14,
                                //fontFamily = FontFamily(Font(R.font.source sans pro)),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              )),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(team2,
                              style: const TextStyle(
                                fontSize: 14,
                                //fontFamily = FontFamily(Font(R.font.source sans pro)),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Text(team1Goals,
                              style: const TextStyle(
                                fontSize: 14,
                                // fontFamily = FontFamily(Font(R.font.source sans pro)),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              )),
                          const SizedBox(
                            width: 40,
                          ),
                          const Text("-",
                              style: TextStyle(
                                fontSize: 14,
                                // fontFamily = FontFamily(Font(R.font.source sans pro)),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              )),
                          const SizedBox(
                            width: 40,
                          ),
                          Text(team2Goals,
                              style: const TextStyle(
                                fontSize: 14,
                                // fontFamily = FontFamily(Font(R.font.source sans pro)),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              ))
                        ],
                      )
                    ],
                  )
                ],
              ),
            )),
        Container(
          width: Get.width * 0.13,
          height: Get.height * 0.1,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Color(0xFF222232)),
          child: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Center(
              child: Text("FT",
                  style: TextStyle(
                    fontSize: 14,
                    //fontFamily = FontFamily(Font(R.font.source sans pro)),
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFFFFF),
                  )),
            ),
          ),
        )
      ],
    );
  }
}
