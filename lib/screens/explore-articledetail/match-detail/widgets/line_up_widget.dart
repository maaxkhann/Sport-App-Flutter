import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';
import 'package:sports_app/screens/explore-articledetail/match-detail/widgets/players_widget.dart';

class LineUpWidget extends StatelessWidget {
  const LineUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: EdgeInsets.only(top: Get.height * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Formation',
                style: kHeading3,
              ),
              SizedBox(
                width: Get.width * 0.04,
              ),
              const Text(
                '(4-2-3-1)',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFC4C4C4)),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: Get.height * 0.01),
          child: Row(
            children: [
              Container(
                width: Get.width * 0.24,
                height: Get.height * 0.06,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(32)),
                child: const Center(
                  child: Text(
                    'Arsenal',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: kWhite),
                  ),
                ),
              ),
              SizedBox(
                width: Get.width * 0.08,
              ),
              const Text('Aston Villa',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w600, color: kWhite))
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.02,
        ),
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: Get.height * 0.45,
              decoration: BoxDecoration(
                color: const Color(0xFF3DC877),
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF24996C),
                    Color(0xFF24996C),
                    Color(0xFF3DC877),
                    Color(0xFF3DC877),
                    Color(0xFF24996C),
                    Color(0xFF24996C),
                    Color(0xFF3DC877),
                    Color(0xFF3DC877),
                    Color(0xFF24996C),
                    Color(0xFF24996C),
                    Color(0xFF3DC877),
                    Color(0xFF3DC877),
                    Color(0xFF24996C),
                    Color(0xFF24996C),
                    Color(0xFF3DC877),
                    Color(0xFF3DC877),
                  ],
                  stops: [
                    0.0,
                    0.125,
                    0.125,
                    0.250,
                    0.250,
                    0.375,
                    0.375,
                    0.500,
                    0.500,
                    0.625,
                    0.625,
                    0.750,
                    0.750,
                    0.875,
                    0.875,
                    1.0,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  VerticalDivider(
                    endIndent: Get.height * 0.01,
                    thickness: 1,
                    color: kWhite,
                  ),
                  VerticalDivider(
                    endIndent: Get.height * 0.01,
                    thickness: 1,
                    color: kWhite,
                  ),
                ],
              ),
            ),
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: Get.height * 0.016),
                    child: Divider(
                      indent: Get.width * 0.02,
                      endIndent: Get.width * 0.02,
                      thickness: 1,
                      color: kWhite,
                    ),
                  ),
                  Divider(
                    indent: Get.width * 0.02,
                    endIndent: Get.width * 0.02,
                    thickness: 1,
                    color: kWhite,
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                height: Get.height * 0.1,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border(
                      bottom: BorderSide(color: kWhite, width: 1),
                      left: BorderSide(color: kWhite, width: 1),
                      right: BorderSide(color: kWhite, width: 1)),
                ),
              ),
            ),
            Positioned(
              bottom: Get.height * 0.01,
              child: RotationTransition(
                turns: const AlwaysStoppedAnimation(-30 / 360),
                child: Container(
                  width: Get.width * 0.1,
                  height: Get.height * 0.03,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border(
                        bottom: BorderSide(color: kWhite, width: 1),
                        top: BorderSide(color: kWhite, width: 1),
                        right: BorderSide(color: kWhite, width: 1)),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: Get.height * 0.01,
              right: Get.width * 0.001,
              child: RotationTransition(
                turns: const AlwaysStoppedAnimation(29 / 360),
                child: Container(
                  width: Get.width * 0.1,
                  height: Get.height * 0.03,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border(
                        bottom: BorderSide(color: kWhite, width: 1),
                        top: BorderSide(color: kWhite, width: 1),
                        left: BorderSide(color: kWhite, width: 1)),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    VerticalDivider(
                      indent: Get.height * 0.36,
                      endIndent: Get.height * 0.01,
                      thickness: 1,
                      color: kWhite,
                    ),
                    VerticalDivider(
                      indent: Get.height * 0.36,
                      endIndent: Get.height * 0.01,
                      thickness: 1,
                      color: kWhite,
                    ),
                  ],
                ),
              ),
            ),
            Positioned.fill(
              top: Get.height * 0.27,
              child: Divider(
                indent: Get.width * 0.234,
                endIndent: Get.width * 0.234,
                thickness: 1,
                color: kWhite,
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    VerticalDivider(
                      indent: Get.height * 0.39,
                      endIndent: Get.height * 0.01,
                      thickness: 1,
                      color: kWhite,
                    ),
                    VerticalDivider(
                      indent: Get.height * 0.39,
                      endIndent: Get.height * 0.01,
                      thickness: 1,
                      color: kWhite,
                    ),
                  ],
                ),
              ),
            ),
            Positioned.fill(
              top: Get.height * 0.33,
              child: Divider(
                indent: Get.width * 0.298,
                endIndent: Get.width * 0.298,
                thickness: 1,
                color: kWhite,
              ),
            ),
            Positioned.fill(
              left: Get.width * 0.032,
              top: Get.height * 0.052,
              child: const PlayersWidget(
                name: 'Aubameyang',
                number: '14',
              ),
            ),
            Positioned.fill(
              left: Get.width * 0.62,
              top: Get.height * 0.052,
              child: const PlayersWidget(
                name: 'Saka',
                number: '7',
              ),
            ),
            Positioned.fill(
              left: Get.width * 0.35,
              top: Get.height * 0.008,
              child: const PlayersWidget(
                name: 'Lacazette',
                number: '9',
              ),
            ),
            Positioned.fill(
              left: Get.width * 0.35,
              top: Get.height * 0.1,
              child: const PlayersWidget(
                name: 'SmithRowe',
                number: '32',
              ),
            ),
            Positioned.fill(
              left: Get.width * 0.25,
              top: Get.height * 0.19,
              child: const PlayersWidget(
                name: 'Xhaka',
                number: '34',
              ),
            ),
            Positioned.fill(
              left: Get.width * 0.46,
              top: Get.height * 0.19,
              child: const PlayersWidget(
                name: 'Dani Cebalos',
                number: '8',
              ),
            ),
            Positioned.fill(
              left: Get.width * 0.04,
              top: Get.height * 0.23,
              child: const PlayersWidget(
                name: 'Tierney',
                number: '3',
              ),
            ),
            Positioned.fill(
              left: Get.width * 0.25,
              top: Get.height * 0.27,
              child: const PlayersWidget(
                name: 'Pablo Mari',
                number: '22',
              ),
            ),
            Positioned.fill(
              left: Get.width * 0.46,
              top: Get.height * 0.27,
              child: const PlayersWidget(
                name: 'Holding',
                number: '16',
              ),
            ),
            Positioned.fill(
              left: Get.width * 0.64,
              top: Get.height * 0.23,
              child: const PlayersWidget(
                name: 'Bellerin',
                number: '2',
              ),
            ),
            Positioned.fill(
              left: Get.width * 0.35,
              top: Get.height * 0.34,
              child: const PlayersWidget(
                name: 'Leno',
                number: '1',
              ),
            ),
            Positioned.fill(
                right: Get.width * 0.58,
                bottom: Get.height * 0.32,
                child: Image.asset(
                    'assets/explore-articledetail-icons/image 3.png')),
            Positioned.fill(
                left: Get.width * 0.08,
                bottom: Get.height * 0.22,
                child: Image.asset(
                    'assets/explore-articledetail-icons/captain.png')),
            Positioned.fill(
                left: Get.width * 0.29,
                bottom: Get.height * 0.04,
                child:
                    Image.asset('assets/explore-articledetail-icons/card.png')),
          ],
        ),
      ],
    );
  }
}
