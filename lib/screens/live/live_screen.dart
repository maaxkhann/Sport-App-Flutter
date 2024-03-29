import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/screens/live/LiveScoreScreen.dart';
import 'package:sports_app/screens/live/standings_view/standings_view.dart';
import 'package:sports_app/screens/live/widgets/live_screen-stack_widget.dart';
import 'package:sports_app/screens/live/widgets/live_screen_appBar.dart';
import '../../constant_widgets/constant_textfield_search.dart';
import '../rising-talent/rising_talent_screen.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({Key? key}) : super(key: key);

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  int selectedTextIndex = 0;
  int selectedGameIndex = -1;
  List<String> texts = [
    'Livestream',
    'LiveScore',
    'Fantasy',
    'Rising Talent',
  ];
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
    selectedTextIndex = 0;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF181829),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.046, vertical: Get.height * 0.02),
          child: ListView(
            children: [
              const LiveScreenAppBar(),
              SizedBox(
                height: Get.height * 0.035,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: texts
                      .asMap()
                      .entries
                      .map((entry) => GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedTextIndex = entry.key;
                              });
                              if (texts[entry.key] == 'LiveScore') {
                                Get.to(() => const LiveScoreScreen());
                              }
                              if (texts[entry.key] == 'Rising Talent') {
                                Get.to(() => const RisingTalentScreen());
                              }
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(entry.value,
                                  style: selectedTextIndex == entry.key
                                      ? const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white)
                                      : const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFC7C9D9))),
                            ),
                          ))
                      .toList(),
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              SizedBox(
                height: 1,
                child: Row(
                  children: texts
                      .asMap()
                      .entries
                      .map((entry) => Expanded(
                            child: Container(
                              color: selectedTextIndex == entry.key
                                  ? const Color(0xFF1566C9)
                                  : const Color(0xFF6B7588),
                            ),
                          ))
                      .toList(),
                ),
              ),
              SizedBox(
                height: Get.height * 0.035,
              ),
              const ConstantTextFieldSearch(
                hintText: 'Search for news, team, match, etc...',
                prefixImage: 'assets/common-icons/search.svg',
                suffixImage: 'assets/common-icons/microphone.svg',
              ),
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
                              ? Get.width * 0.32 // Adjust the desired width
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
                                ? const Color(
                                    0xFF1566C9) // Adjust the desired color
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
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LiveScreenStackWidget(),
                    SizedBox(
                      width: 15,
                    ),
                    LiveScreenStackWidget()
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Upcoming',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      'Today',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/common-icons/calendar.svg',
                    width: 18,
                    height: 18,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/live-icons/image 9.png',
                    width: 24,
                    height: 24,
                    filterQuality: FilterQuality.high,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Premier League',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        Text(
                          'England',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: Get.width * 0.3,
                      height: Get.height * 0.152,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/live-icons/image 158.png',
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    Container(
                      width: Get.width * 0.3,
                      height: Get.height * 0.152,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/live-icons/image 158.png',
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    Container(
                      width: Get.width * 0.3,
                      height: Get.height * 0.152,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/live-icons/image 158.png',
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
