import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/screens/explore-articledetail/match-detail/match_detail_screen.dart';

class CustomListTile extends StatelessWidget {
  final String imagePath1;
  final String imagePath2;
  final String title;
  final String date;

  const CustomListTile({
    super.key,
    required this.imagePath1,
    required this.imagePath2,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () => Get.to(() => const MatchDetailScreen()),
        contentPadding: EdgeInsets.zero,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 100,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: Get.width * 0.12,
                    height: Get.height * 0.12,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF222232),
                    ),
                    child: Image.asset(
                      imagePath2,
                      height: 36,
                      width: 36,
                    ),
                  ),
                  Positioned(
                    left: Get.width * 0.05,
                    child: Container(
                      width: Get.width * 0.12,
                      height: Get.height * 0.12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 2.0,
                          color: const Color(0xFF181829),
                        ),
                        color: const Color(0xFF222232),
                      ),
                      child: Image.asset(
                        imagePath1,
                        height: 36,
                        width: 36,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFFFFFF),
              ),
            ),
            FittedBox(
              child: Text(
                date,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF65656B),
                ),
              ),
            ),
          ],
        ),
        trailing: const InkWell(
            child: Icon(
          Icons.clear,
          size: 19,
          color: Color(0xFF65656B),
        )));
  }
}
