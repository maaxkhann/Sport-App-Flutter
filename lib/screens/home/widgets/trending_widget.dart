import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';

class TrendingWidget extends StatelessWidget {
  const TrendingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Trending', style: kHeading4),
            InkWell(
                onTap: () {},
                child: SvgPicture.asset('assets/home-icons/sort.svg'))
          ],
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 16),
                  height: Get.height * 0.25,
                  width: 230,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/home-icons/articel4.png',
                          height: Get.height * 0.3,
                          width: 230,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        bottom: 40,
                        child: Text(
                          'Arsenal vs Aston Villa\nprediction',
                          style: kHeading4,
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        bottom: 10,
                        child: Text(
                          'March 15, 2023',
                          style: kHeading6,
                        ),
                      )
                    ],
                  )),
              Container(
                  height: Get.height * 0.25,
                  width: 230,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/home-icons/articel4.png',
                          height: Get.height * 0.3,
                          width: 230,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        bottom: 40,
                        child: Text(
                          'NBA Must watch games in\n2023',
                          style: kHeading4,
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        bottom: 10,
                        child: Text(
                          'March 15, 2023',
                          style: kHeading6,
                        ),
                      )
                    ],
                  )),
            ],
          ),
        )
      ],
    );
  }
}
