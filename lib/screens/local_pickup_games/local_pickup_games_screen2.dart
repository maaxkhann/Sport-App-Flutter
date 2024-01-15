import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import '../../constant_widgets/constant_button.dart';
import '../../constant_widgets/constant_textfield_search.dart';
import 'local_pickup_games_screen3.dart';

class LocalPickUpGamesScreen2 extends StatefulWidget {
  const LocalPickUpGamesScreen2({Key? key}) : super(key: key);

  @override
  State<LocalPickUpGamesScreen2> createState() =>
      _LocalPickUpGamesScreen2State();
}

class _LocalPickUpGamesScreen2State extends State<LocalPickUpGamesScreen2> {
  int selectedGameIndex = -1; // Initially, no game is selected
  List<String> gameImages = [
    'assets/category/soccer.png',
    'assets/category/basketball.png',
    'assets/category/football.png',
    'assets/category/baseball.png',
    'assets/category/tennis.png',
    'assets/category/volleyball.png',
    'assets/category/cricketball.png',
    'assets/category/badminton.png',
  ];
  List<String> gameNames = [
    'Soccer',
    'Basketball',
    'Football',
    'Baseball',
    'Tennis',
    'Volleyball',
    'Cricketball',
    'Badminton',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBG,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.055, vertical: Get.height * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Get.back(),
                        child: SvgPicture.asset(
                          'assets/common-icons/arrow-back.svg',
                          width: 9,
                          height: 16,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: Get.width * 0.25),
                        child: const Text(
                          'Pick up games',
                          style: kHeading3,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/common-icons/notification.svg',
                          width: 17,
                          height: 22,
                        ),
                      )
                    ]),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int index = 0; index < gameImages.length; index++)
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedGameIndex = index;
                            });
                          },
                          child: Container(
                            width: selectedGameIndex == index
                                ? Get.width * 0.32
                                : Get.width * 0.16,
                            height: Get.height * 0.06,
                            decoration: BoxDecoration(
                              shape: selectedGameIndex == index
                                  ? BoxShape.rectangle
                                  : BoxShape.circle,
                              borderRadius: selectedGameIndex == index
                                  ? BorderRadius.circular(30)
                                  : null,
                              color: selectedGameIndex == index
                                  ? const Color(0xFF1566C9)
                                  : const Color(0xFF222232),
                            ),
                            child: Row(
                              mainAxisAlignment: selectedGameIndex == index
                                  ? MainAxisAlignment.start
                                  : MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: selectedGameIndex == index ? 8 : 0),
                                  child: Image.asset(
                                    gameImages[index],
                                    filterQuality: FilterQuality.high,
                                    width: selectedGameIndex == index
                                        ? Get.width * 0.08
                                        : Get.width * 0.08,
                                  ),
                                ),
                                if (selectedGameIndex == index)
                                  Padding(
                                    padding: const EdgeInsets.only(left: 6.0),
                                    child: Text(
                                      gameNames[index],
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                const Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'Create team',
                    style: kHeading3,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                Container(
                  width: double.infinity,
                  height: Get.height * 0.575,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0xFF8F90A6),
                      )),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.042,
                          vertical: Get.height * 0.03),
                      child: Column(
                        children: [
                          const ConstantTextFieldSearch(
                              hintText: 'Team Name',
                              borderSide: BorderSide(color: Colors.white38)),
                          Padding(
                            padding: EdgeInsets.only(top: Get.height * 0.02),
                            child: const ConstantTextFieldSearch(
                              hintText: 'Number of players',
                              suffixImage: 'assets/common-icons/arrow-down.svg',
                              borderSide: BorderSide(color: Colors.white38),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: Get.height * 0.02),
                            child: const ConstantTextFieldSearch(
                                hintText: 'Schedule a date',
                                suffixImage: 'assets/common-icons/calendar.svg',
                                borderSide: BorderSide(color: Colors.white38)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: Get.height * 0.02),
                            child: const ConstantTextFieldSearch(
                                hintText: 'Pick location',
                                suffixImage: 'assets/common-icons/location.svg',
                                borderSide: BorderSide(color: Colors.white38)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: Get.height * 0.02),
                            child: const ConstantTextFieldSearch(
                                hintText: 'Select players',
                                suffixImage: 'assets/common-icons/profile.svg',
                                borderSide: BorderSide(color: Colors.white38)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                ConstantButton(
                  onTap: () => Get.to(() => const LocalPickUpGamesScreen3()),
                  text: 'Done',
                  textColor: Colors.white,
                  buttonColor: const Color(0xFF3088F4),
                  width: Get.width * 0.6,
                  height: Get.height * 0.073,
                  borderRadius: 28,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
