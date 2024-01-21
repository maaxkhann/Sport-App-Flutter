import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:sports_app/screens/explore-articledetail/match-detail/widgets/line_up_widget.dart';
import 'package:sports_app/screens/explore-articledetail/match-detail/widgets/players_widget.dart';
import 'package:sports_app/screens/explore-articledetail/match-detail/widgets/reusable_row_widget.dart';
import 'package:sports_app/screens/explore-articledetail/widgets/match_detail_widget.dart';

class MatchDetailScreen extends StatefulWidget {
  const MatchDetailScreen({Key? key}) : super(key: key);

  @override
  State<MatchDetailScreen> createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen> {
  int selectedIndex = 0;

  final List<String> tabs = ['Match Detail', 'Line Up'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * .05, vertical: Get.height * .02),
          child: SingleChildScrollView(
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
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF),
                        ))
                  ],
                ),
                SizedBox(
                  height: Get.height * .03,
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
                              shape: BoxShape.circle, color: Color(0xFF2B2B3D)),
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
                              shape: BoxShape.circle, color: Color(0xFF2B2B3D)),
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
                Padding(
                  padding: EdgeInsets.only(right: Get.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      for (int index = 0; index < tabs.length; index++)
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            width: Get.width * 0.32,
                            height: Get.height * 0.075,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedIndex == index
                                  ? Colors.blue
                                  : Colors.transparent,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                tabs[index],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      const Text("H2H",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * .02,
                ),
                selectedIndex == 0
                    ? SingleChildScrollView(
                        child: Column(
                          children: [
                            const ReUsableRow(
                              text: '8',
                              text2: 'Shooting',
                              text3: '12',
                            ),
                            SizedBox(
                              height: Get.height * .02,
                            ),
                            const ReUsableRow(
                              text: '22',
                              text2: 'Attacks',
                              text3: '29',
                            ),
                            SizedBox(
                              height: Get.height * .02,
                            ),
                            const ReUsableRow(
                              text: '42',
                              text2: 'Profession',
                              text3: '58',
                            ),
                            SizedBox(
                              height: Get.height * .02,
                            ),
                            const ReUsableRow(
                              text: '3',
                              text2: 'Cards',
                              text3: '5',
                              icon:
                                  'assets/explore-articledetail-icons/card.png',
                            ),
                            SizedBox(
                              height: Get.height * .02,
                            ),
                            const ReUsableRow(
                              text: '8',
                              text2: 'Corners',
                              text3: '7',
                            ),
                            SizedBox(
                              height: Get.height * .03,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width * 0.015),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Other Match",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFFFFFFFF),
                                      )),
                                  InkWell(
                                    onTap: () {},
                                    child: const Text("See all",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFFC4C4C4),
                                        )),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: Get.height * .02,
                            ),
                            const MatchDetailContainer(
                              image1:
                                  'assets/explore-articledetail-icons/idezia3.png',
                              image2:
                                  'assets/standing-view-icons/manchester.png',
                              team1: 'Man United',
                              team2: 'Chelsea FC',
                              team1Goals: '2',
                              team2Goals: '3',
                            ),
                            SizedBox(
                              height: Get.height * .02,
                            ),
                            const MatchDetailContainer(
                                image1:
                                    'assets/explore-articledetail-icons/southoumn.png',
                                image2:
                                    'assets/explore-articledetail-icons/idezia7.png',
                                team1: 'Totenham',
                                team2: 'Southamton',
                                team1Goals: '1',
                                team2Goals: '0')
                          ],
                        ),
                      )
                    : const LineUpWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
