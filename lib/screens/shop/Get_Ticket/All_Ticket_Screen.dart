import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/screens/shop/Get_Ticket/Book_Ticket_Screen.dart';
import 'package:sports_app/screens/shop/Get_Ticket/SelectSeat_Ticket_Details_Screen.dart';
import 'package:sports_app/screens/shop/Get_Ticket/Ticket_Detaile_Screen.dart';
import 'package:sports_app/screens/shop/widgets/Get_Ticket_Container.dart';

import '../../../app_constants/constant_textstyle.dart';
import '../widgets/GetTicketScreeenAppBar.dart';

class AllTicketScreen extends StatefulWidget {
  const AllTicketScreen({super.key});

  @override
  State<AllTicketScreen> createState() => _AllTicketScreenState();
}

class _AllTicketScreenState extends State<AllTicketScreen> {
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
      appBar: const GetTicketScreenAppBar(
        appBartxt: 'Tickets Details',
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              allGamesRow(),
              sizedBox(10),
              customRow('Upcoming', 'assets/shop/arrow.png'),
              sizedBox(15),
              GetTicketContainer(getTicketOnTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  return const BookTicketScreen();
                }));
              }),
              sizedBox(30),
              matchRow(),
              sizedBox(30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Match',
                    style: kHeading55,
                  ),
                ],
              ),
              sizedBox(20),
              matchesContainer(),
              sizedBox(10),
              matchesContainer(),
              sizedBox(10),
              matchesContainer(),
            ],
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
    );
  }

  Widget customRow(String rowText, imgPath) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          rowText,
          style: kHeading3,
        ),
        SizedBox(
            width: Get.width * 0.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'See all',
                  style: kHeading6,
                ),
                Image.asset(imgPath),
              ],
            )),
      ],
    );
  }

  Widget matchRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: Get.height * 0.18,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/shop/image9.png'),
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Premier League',
                    style: kHeading7,
                  ),
                  Text(
                    'England',
                    style: kHeading9,
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset('assets/shop/arrow.png')
      ],
    );
  }

  Widget matchesContainer() {
    return Column(
      children: [
        Container(
          height: Get.height * 0.1,
          width: Get.width * 0.85,
          decoration: const BoxDecoration(
            color: Color(0xff2B2B3D),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: Get.width * 0.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/shop/idezia.png'),
                    Image.asset('assets/shop/idezia.png'),
                  ],
                ),
              ),
              SizedBox(
                width: Get.width * 0.6,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Fulham',
                      style: kHeading6,
                    ),
                    Text(
                      'vs',
                      style: kHeading7,
                    ),
                    Text(
                      'Wolverhampton',
                      style: kHeading6,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: Get.height * 0.1,
          width: Get.width * 0.85,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 30, 30, 51),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: Get.width * 0.3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/shop/calendar.svg',
                      fit: BoxFit.contain,
                      height: Get.height * 0.03,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: Get.height * 0.05,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '9 May 2021',
                            style: kHeading8,
                          ),
                          Text(
                            '19 : 45',
                            style: kHeading8,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: Get.width * 0.28,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/shop/ground.svg',
                      fit: BoxFit.contain,
                    ),
                    const Text(
                      'Craven Cottage',
                      style: kHeading8,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    return const SelectSeatTicketDetailsScreen();
                  }));
                },
                child: Container(
                  height: Get.height * 0.04,
                  width: Get.width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 199, 207, 255)
                          .withOpacity(0.75)),
                  child: const Center(
                    child: Text(
                      'Get Ticket',
                      style: kHeading7,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
