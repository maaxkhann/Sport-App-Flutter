import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:sports_app/screens/live/standings_view/standings_view.dart';

import '../explore-articledetail/widgets/match_detail_widget.dart';
import '../shop/Get_Ticket/Book_Ticket_Screen.dart';
import '../shop/widgets/Get_Ticket_Container.dart';

class LiveScoreScreen extends StatefulWidget {
  const LiveScoreScreen({super.key});

  @override
  State<LiveScoreScreen> createState() => _LiveScoreScreenState();
}

class _LiveScoreScreenState extends State<LiveScoreScreen> {
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
      appBar: appBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetTicketContainer(
                getTicketOnTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    return const BookTicketScreen();
                  }));
                },
              ),
              sizedBox(10),
              allGamesRow(),
              sizedBox(10),
              moreRow(),
              GestureDetector(
                onTap: () => Get.to(() => const StandingsView()),
                child: const MatchDetailContainer(
                  image1: 'assets/explore-articledetail-icons/idezia3.png',
                  image2: 'assets/standing-view-icons/manchester.png',
                  team1: 'Man United',
                  team2: 'Chelsea FC',
                  team1Goals: '2',
                  team2Goals: '3',
                ),
              ),
              sizedBox(10),
              moreRow(),
              GestureDetector(
                onTap: () => Get.to(() => const StandingsView()),
                child: const MatchDetailContainer(
                  image1: 'assets/explore-articledetail-icons/idezia3.png',
                  image2: 'assets/standing-view-icons/manchester.png',
                  team1: 'Man United',
                  team2: 'Chelsea FC',
                  team1Goals: '2',
                  team2Goals: '3',
                ),
              ),
              sizedBox(10),
              moreRow(),
              GestureDetector(
                child: const MatchDetailContainer(
                  image1: 'assets/explore-articledetail-icons/idezia3.png',
                  image2: 'assets/standing-view-icons/manchester.png',
                  team1: 'Man United',
                  team2: 'Chelsea FC',
                  team1Goals: '2',
                  team2Goals: '3',
                ),
              ),
              sizedBox(10),
            ],
          ),
        ),
      ),
    );
  }

  Widget allGamesRow() {
    return SingleChildScrollView(
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
                margin: const EdgeInsets.all(10),
                height: Get.height * 0.15,
                width: Get.height * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: selectedGameIndex == index
                      ? const Color(0xFF1566C9)
                      : const Color(0xFF222232),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                    sizedBox(10),
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
    );
  }

  Widget moreRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
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
                      fontSize: 14,
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
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      backgroundColor: const Color(0xff181829),
      title: const Text(
        'Live Score',
        style: kHeading4,
      ),
      leading: const SizedBox(
        width: 0,
      ),
      actions: [
        SvgPicture.asset('assets/shop/Search.svg'),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset('assets/shop/notif2.svg'),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }

  Widget sizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }
}
