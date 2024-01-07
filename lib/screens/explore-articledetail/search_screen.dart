import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/screens/explore-articledetail/widgets/custom_search_listtile_widget.dart';

import '../../constant_widgets/bottom_nav_bar_widget.dart';
import '../../constant_widgets/constant_textfield_search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.04, vertical: Get.height * .03),
          child: ListView(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Flexible(
                    flex: 2,
                    child: ConstantTextFieldSearch(
                      hintText: 'Search for news, team, match, etc..',
                      prefixImage: 'assets/common-icons/search.svg',
                      suffixImage: 'assets/common-icons/microphone.svg',
                    ),
                  ),
                  Flexible(
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Get.width * .02,
                            vertical: Get.height * .01),
                        child: TextButton(
                          onPressed: () =>
                              Get.to(() => const BottomNavigationBarWidget()),
                          child: const Text("Cancel",
                              style: TextStyle(
                                fontSize: 16,
                                //fontFamily = FontFamily(Font(R.font.source sans pro)),
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFFFFFF),
                              )),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: Get.height * .025,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: Get.height * .09,
                    width: Get.width * .31,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      color: const Color(0xFF222232),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/explore-articledetail-icons/fire.png',
                          height: Get.height * .09,
                          width: Get.width * .1,
                        ),
                        const Center(
                          child: Text("Live Score",
                              style: TextStyle(
                                fontSize: 14,
                                //fontFamily = FontFamily(Font(R.font.source sans pro)),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: Get.height * .09,
                    width: Get.width * .2,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFF222232)),
                    child: Image.asset(
                        'assets/explore-articledetail-icons/newspaper.png'),
                  ),
                  Container(
                    height: Get.height * .09,
                    width: Get.width * .2,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFF222232)),
                    child: Image.asset(
                        'assets/explore-articledetail-icons/keycap.png'),
                  ),
                  Container(
                    height: Get.height * .09,
                    width: Get.width * .2,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFF222232)),
                    child: Image.asset(
                        'assets/explore-articledetail-icons/stadium.png'),
                  )
                ],
              ),
              SizedBox(
                height: Get.height * .022,
              ),
              const CustomListTile(
                  imagePath1: 'assets/common-icons/barcelona.png',
                  imagePath2:
                      'assets/explore-articledetail-icons/realmadrid.png',
                  title: 'Barcelona VS Real Madrid',
                  date: 'Monday, 12 Feb 2021 . 02.30 am'),
              const CustomListTile(
                  imagePath1: 'assets/explore-articledetail-icons/idezia.png',
                  imagePath2: 'assets/explore-articledetail-icons/idezia2.png',
                  title: 'Aersenal VS Aston Villa',
                  date: 'Tuesday, 9 Mar 2021 . 05.00 am'),
              const CustomListTile(
                  imagePath1: 'assets/explore-articledetail-icons/idezia3.png',
                  imagePath2: 'assets/explore-articledetail-icons/idezia4.png',
                  title: 'Chelsea VS Liverpool',
                  date: 'Satuday, 14 Mar 2021 . 01.00 am'),
              const CustomListTile(
                  imagePath1: 'assets/explore-articledetail-icons/idezia5.png',
                  imagePath2: 'assets/explore-articledetail-icons/idezia6.png',
                  title: 'Dortmund VS München',
                  date: 'Wednesday, 8 Apr 2021 . 02.30 am'),
              const CustomListTile(
                  imagePath1:
                      'assets/explore-articledetail-icons/realmadrid.png',
                  imagePath2: 'assets/explore-articledetail-icons/idezia.png',
                  title: 'Real Madrid VS Arsenal',
                  date: 'Friday, 21 Apr 2021 . 00.45 am'),
              const CustomListTile(
                  imagePath1: 'assets/explore-articledetail-icons/idezia7.png',
                  imagePath2: 'assets/explore-articledetail-icons/idezia8.png',
                  title: 'Tottenham VS Watford',
                  date: 'Friday, 21 Apr 2021 . 02.45 am'),
              const CustomListTile(
                  imagePath1: 'assets/explore-articledetail-icons/idezia9.png',
                  imagePath2: 'assets/explore-articledetail-icons/idezia10.png',
                  title: 'Swansea City VS Fulham',
                  date: 'Sunday, 2 May 2021 . 04.45 am'),
              const CustomListTile(
                  imagePath1: 'assets/explore-articledetail-icons/idezia11.png',
                  imagePath2: 'assets/explore-articledetail-icons/idezia4.png',
                  title: 'Wolfsburg VS Liverpool',
                  date: 'Wednesday, 15 May 2021 . 01.00 am'),
            ],
          ),
        ),
      ),
    );
  }
}
