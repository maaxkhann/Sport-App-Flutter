import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Widget/round_button.dart';
import 'Widget/teaminfo_row.dart';

class StandingsDetail extends StatelessWidget {
  const StandingsDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 16),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: SizedBox(
                    child: Image.asset('assets/standing-view-icons/arrowLeft.png'),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.28,
                ),
                SizedBox(
                  height: 25,
                  width: 25,
                  child: Image.asset('assets/standing-view-icons/laLigaFlag.png'),
                ),
                SizedBox(
                  width: Get.width * 0.020,
                ),
                Text(
                  'Spain',
                  style: headingText,
                ),
                const Spacer(),
              ],
            ),
            SizedBox(
              height: Get.height * 0.050,
            ),
            Container(
              height: 120,
              width: 120,
              decoration: const BoxDecoration(
                  color: Color(0xFF222232),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/standing-view-icons/laLigaLogo.png'))),
            ),
            SizedBox(
              height: Get.height * 0.030,
            ),
            const Text(
              'La Liga',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF)),
            ),
            SizedBox(
              height: Get.height * 0.050,
            ),
            const Row(
              children: [
                RoundButton(
                  title: 'All',
                  color: Color(0xFF1566C9),
                ),
                RoundButton(
                  title: 'Home',
                  color: Color(0xFF1566C9),
                ),
                RoundButton(
                  title: 'Away',
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.035,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      '#',
                      style: bodyTextStyle,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Teams',
                      style: bodyTextStyle,
                    ),
                    const Spacer(),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'D',
                            style: bodyTextStyle,
                          ),
                          Text(
                            'L',
                            style: bodyTextStyle,
                          ),
                          Text(
                            'Ga',
                            style: bodyTextStyle,
                          ),
                          Text(
                            'Gd',
                            style: bodyTextStyle,
                          ),
                          Text(
                            'Pts',
                            style: bodyTextStyle,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Divider(color: Color(0xFF2B2B3D))
              ],
            ),
            SizedBox(
              height: Get.height * 0.010,
            ),
            Expanded(
              child: ListView(
                children: const [
                  TeamInfoRow(
                    no: 1,
                    flag: 'AtleticoFlag',
                    teamName: 'Atlético Madrid',
                    d: 2,
                    l: 1,
                    ga: 6,
                    gd: 23,
                    pts: 38,
                    color: Color(0xFF14274D),
                  ),
                  TeamInfoRow(
                    no: 2,
                    flag: 'realMadridFlag',
                    teamName: 'Real Madrid',
                    d: 2,
                    l: 1,
                    ga: 6,
                    gd: 23,
                    pts: 38,
                    color: Color(0xFF14274D),
                  ),
                  TeamInfoRow(
                    no: 3,
                    flag: 'barcelona',
                    teamName: 'Barcelona',
                    d: 2,
                    l: 1,
                    ga: 6,
                    gd: 23,
                    pts: 38,
                    color: Color(0xFF14274D),
                  ),
                  TeamInfoRow(
                    no: 4,
                    flag: 'villareal',
                    teamName: 'Villareal',
                    d: 2,
                    l: 1,
                    ga: 6,
                    gd: 23,
                    pts: 38,
                    color: Color(0xFF441818),
                  ),
                  TeamInfoRow(
                    no: 5,
                    flag: 'real socieded',
                    teamName: 'Real Sociedad',
                    d: 2,
                    l: 1,
                    ga: 6,
                    gd: 23,
                    pts: 38,
                    color: Color(0xFF441818),
                  ),
                  TeamInfoRow(
                    no: 6,
                    flag: 'sevilla',
                    teamName: 'Sevilla',
                    d: 2,
                    l: 1,
                    ga: 6,
                    gd: 23,
                    pts: 38,
                  ),
                  TeamInfoRow(
                    no: 7,
                    flag: 'granda',
                    teamName: 'Granda',
                    d: 2,
                    l: 1,
                    ga: 6,
                    gd: 23,
                    pts: 38,
                  ),
                  TeamInfoRow(
                    no: 8,
                    flag: 'celta',
                    teamName: 'Celta Vigo',
                    d: 2,
                    l: 1,
                    ga: 6,
                    gd: 23,
                    pts: 38,
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

TextStyle headingText = const TextStyle(
    fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFFFFFFFF));

TextStyle buttonTextStyle = const TextStyle(
    fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFFFFFFFF));

TextStyle bodyTextStyle = const TextStyle(
    fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFFFFFFFF));
