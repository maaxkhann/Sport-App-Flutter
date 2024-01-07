import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../standings_detail_view/standings_details.dart';
import 'Widget/teaminfo_row.dart';
import 'Widget/teams_row.dart';
import 'Widget/title_row.dart';

class StandingsView extends StatefulWidget {
  const StandingsView({super.key});

  @override
  State<StandingsView> createState() => _StandingsViewState();
}

class _StandingsViewState extends State<StandingsView> {
  int selectedGameIndex = -1;

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
      backgroundColor: const Color(0xFF181829),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search your competition ...',
                    hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF65656B)),
                    prefixIcon: Image.asset(
                      height: 15,
                      width: 15,
                      'assets/standing-view-icons/searchIcon.png',
                    ),
                    filled: true,
                    fillColor: const Color(0xFF222232),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFF222232)),
                        borderRadius: BorderRadius.circular(14)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFF222232)),
                        borderRadius: BorderRadius.circular(14)),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.035,
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
                                  ? const Color(
                                      0xFF1566C9) 
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
                                        ? Get.width *
                                            0.08 
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
                  height: Get.height * 0.035,
                ),
                TitleRow(
                  flag: 'laLigaFlag',
                  title: 'La Liga',
                  subtitle: 'Spain',
                  onPressed: () {
                    Get.to(const StandingsDetail());
                  },
                ),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF222232),
                      borderRadius: BorderRadius.circular(19)),
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: [
                        const TeamsRow(),
                        const TeamsInfoRow(
                            flag: 'AtleticoFlag',
                            teamName: 'Atlético Madrid',
                            d: 2,
                            l: 1,
                            ga: 6,
                            gd: 23,
                            pts: 38),
                        const TeamsInfoRow(
                            flag: 'realMadridFlag',
                            teamName: 'Real Madrid',
                            d: 4,
                            l: 3,
                            ga: 7,
                            gd: 15,
                            pts: 37),
                        const TeamsInfoRow(
                            flag: 'barcelona',
                            teamName: 'Barcelona',
                            d: 4,
                            l: 4,
                            ga: 9,
                            gd: 20,
                            pts: 34),
                        const TeamsInfoRow(
                            flag: 'villareal',
                            teamName: 'Villareal',
                            d: 8,
                            l: 2,
                            ga: 10,
                            gd: 16,
                            pts: 32),
                        SizedBox(
                          height: Get.height * 0.020,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.040,
                ),
                TitleRow(
                  flag: 'premireLeague',
                  title: 'Premier League',
                  subtitle: 'England',
                  onPressed: () {},
                ),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF222232),
                      borderRadius: BorderRadius.circular(19)),
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: [
                        const TeamsRow(),
                        const TeamsInfoRow(
                            flag: 'liverpool',
                            teamName: 'Atlético Madrid',
                            d: 2,
                            l: 1,
                            ga: 6,
                            gd: 23,
                            pts: 38),
                        const TeamsInfoRow(
                            flag: 'manchester',
                            teamName: 'Real Madrid',
                            d: 2,
                            l: 1,
                            ga: 6,
                            gd: 23,
                            pts: 38),
                        const TeamsInfoRow(
                            flag: 'leicester',
                            teamName: 'Barcelona',
                            d: 2,
                            l: 1,
                            ga: 6,
                            gd: 23,
                            pts: 38),
                        const TeamsInfoRow(
                            flag: 'villareal',
                            teamName: 'Villareal',
                            d: 2,
                            l: 1,
                            ga: 6,
                            gd: 23,
                            pts: 38),
                        SizedBox(
                          height: Get.height * 0.020,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

TextStyle bodyText = const TextStyle(
    fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFFFFFFFF));
