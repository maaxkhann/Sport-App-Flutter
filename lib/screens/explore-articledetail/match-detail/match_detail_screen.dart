import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:sports_app/screens/explore-articledetail/widgets/match_detail_widget.dart';

class MatchDetailScreen extends StatefulWidget {
  const MatchDetailScreen({Key? key}) : super(key: key);

  @override
  State<MatchDetailScreen> createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * .05, vertical: Get.height * .02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => Get.back(),
                    child: SvgPicture.asset(
                      'assets/common-icons/arrow-back.svg',
                      color: const Color(0xFFFFFFFF),
                      width: 20,
                      height: 20,
                    ),
                  ),
                  SizedBox(
                    width: Get.width * .2,
                  ),
                  const Text("UEFA Champions League",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        //fontFamily = FontFamily(Font(R.font.source sans pro)),
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ))
                ],
              ),
              SizedBox(
                height: Get.height * .04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        width: Get.width * 0.2,
                        height: Get.height * 0.082,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFF222232)),
                        child: Image.asset(
                          'assets/explore-articledetail-icons/idezia.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * .02,
                      ),
                      const Text("Arsenal",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            //fontFamily = FontFamily(Font(R.font.source sans pro)),
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF),
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      const Text("2 - 3",
                          textAlign: TextAlign.center, style: kHeading1),
                      SizedBox(
                        height: Get.height * .02,
                      ),
                      const Text("90.15",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            //fontFamily = FontFamily(Font(R.font.source sans pro)),
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF),
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        width: Get.width * 0.2,
                        height: Get.height * 0.082,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFF222232)),
                        child: Image.asset(
                          'assets/explore-articledetail-icons/idezia2.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * .02,
                      ),
                      const Text("Aston Villa",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            //fontFamily = FontFamily(Font(R.font.source sans pro)),
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF),
                          ))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * .03,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 115,
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.blue,
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text("Match Detail",
                                style: TextStyle(
                                  fontSize: 14,
                                  //fontFamily = FontFamily(Font(R.font.source sans pro)),
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * .02,
                      ),
                      const Text("8",
                          style: TextStyle(
                            fontSize: 20,
                            //fontFamily = FontFamily(Font(R.font.source sans pro)),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          )),
                      SizedBox(
                        height: Get.height * .01,
                      ),
                      const Text("22",
                          style: TextStyle(
                            fontSize: 20,
                            //fontFamily = FontFamily(Font(R.font.source sans pro)),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          )),
                      SizedBox(
                        height: Get.height * .01,
                      ),
                      const Text("42",
                          style: TextStyle(
                            fontSize: 20,
                            //fontFamily = FontFamily(Font(R.font.source sans pro)),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          )),
                      SizedBox(
                        height: Get.height * .01,
                      ),
                      const Text("3",
                          style: TextStyle(
                            fontSize: 20,
                            //fontFamily = FontFamily(Font(R.font.source sans pro)),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          )),
                      SizedBox(
                        height: Get.height * .01,
                      ),
                      const Text("8",
                          style: TextStyle(
                            fontSize: 20,
                            //fontFamily = FontFamily(Font(R.font.source sans pro)),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          //print('dddd);
                        },
                        child: Container(
                          width: 86,
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.transparent,
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text("Line Up",
                                style: TextStyle(
                                  fontSize: 14,
                                  //fontFamily = FontFamily(Font(R.font.source sans pro)),
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * .02,
                      ),
                      const Text("Shooting",
                          style: TextStyle(
                            fontSize: 20,
                            //fontFamily : FontFamily(Font(R.font.source sans pro)),
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFC4C4C4),
                          )),
                      SizedBox(
                        height: Get.height * .01,
                      ),
                      const Text("Attacks",
                          style: TextStyle(
                            fontSize: 20,
                            //fontFamily : FontFamily(Font(R.font.source sans pro)),
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFC4C4C4),
                          )),
                      SizedBox(
                        height: Get.height * .01,
                      ),
                      const Text("Possesion",
                          style: TextStyle(
                            fontSize: 20,
                            //fontFamily : FontFamily(Font(R.font.source sans pro)),
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFC4C4C4),
                          )),
                      SizedBox(
                        height: Get.height * .01,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/explore-articledetail-icons/card.png',
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text("Card",
                              style: TextStyle(
                                fontSize: 20,
                                //fontFamily : FontFamily(Font(R.font.source sans pro)),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFC4C4C4),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * .01,
                      ),
                      const Text("Corners",
                          style: TextStyle(
                            fontSize: 20,
                            //fontFamily : FontFamily(Font(R.font.source sans pro)),
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFC4C4C4),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 86,
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.transparent,
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text("H2H",
                                style: TextStyle(
                                  fontSize: 14,
                                  //fontFamily = FontFamily(Font(R.font.source sans pro)),
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * .02,
                      ),
                      const Text("12",
                          style: TextStyle(
                            fontSize: 20,
                            //fontFamily = FontFamily(Font(R.font.source sans pro)),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          )),
                      SizedBox(
                        height: Get.height * .01,
                      ),
                      const Text("29",
                          style: TextStyle(
                            fontSize: 20,
                            //fontFamily = FontFamily(Font(R.font.source sans pro)),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          )),
                      SizedBox(
                        height: Get.height * .01,
                      ),
                      const Text("58",
                          style: TextStyle(
                            fontSize: 20,
                            //fontFamily = FontFamily(Font(R.font.source sans pro)),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          )),
                      SizedBox(
                        height: Get.height * .01,
                      ),
                      const Text("5",
                          style: TextStyle(
                            fontSize: 20,
                            //fontFamily = FontFamily(Font(R.font.source sans pro)),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          )),
                      SizedBox(
                        height: Get.height * .01,
                      ),
                      const Text("7",
                          style: TextStyle(
                            fontSize: 20,
                            //fontFamily = FontFamily(Font(R.font.source sans pro)),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          ))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: Get.height * .03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Other Match",
                      style: TextStyle(
                        fontSize: 20,
                        //fontFamily = FontFamily(Font(R.font.source sans pro)),
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      )),
                  InkWell(
                    onTap: () {},
                    child: const Text("See all",
                        style: TextStyle(
                          fontSize: 12,
                          //fontFamily = FontFamily(Font(R.font.source sans pro)),
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              const MatchDetailContainer(
                image1: 'assets/explore-articledetail-icons/idezia3.png',
                image2: 'assets/standing-view-icons/manchester.png',
                team1: 'Man United',
                team2: 'Chelsea FC',
                team1Goals: '2',
                team2Goals: '3',
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              MatchDetailContainer(
                  image1: 'assets/explore-articledetail-icons/southoumn.png',
                  image2: 'assets/explore-articledetail-icons/idezia7.png',
                  team1: 'Totenham',
                  team2: 'Southamton',
                  team1Goals: '1',
                  team2Goals: '0')
            ],
          ),
        ),
      ),
    );
  }
}
