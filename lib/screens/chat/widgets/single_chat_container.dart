import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';

class SingleChatContainer extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String time;
  final String? voice;
  final Color? containerColor;
  final double? topLeftRadius;
  final double? bottomRightRadius;
  final bool prefixImage;

  const SingleChatContainer(
      {super.key,
      required this.text,
      required this.imageUrl,
      required this.time,
      this.voice,
      this.containerColor,
      this.topLeftRadius,
      this.bottomRightRadius,
      required this.prefixImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                right: Get.width * 0.03, bottom: Get.height * 0.02),
            child: prefixImage == true
                ? CircleAvatar(
                    radius: 18,
                    child: Image.asset(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  )
                : Text(
                    text,
                    style: kHeading7,
                  ),
          ),
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  color: containerColor ?? const Color((0xFF16294D)),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(topLeftRadius ?? 15),
                      topRight: const Radius.circular(15),
                      bottomLeft: const Radius.circular(15),
                      bottomRight: Radius.circular(bottomRightRadius ?? 15))),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Center(
                  child: voice != null
                      ? Row(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  voice.toString(),
                                  width: Get.width * 0.5,
                                  height: Get.height * 0.03,
                                  fit: BoxFit.fitWidth,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Icon(
                                    Icons.pause,
                                    color: kWhite,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      : Text(
                          text,
                          style: kHeading7,
                        ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              time,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFC7C9D9)),
            ),
          )
        ],
      ),
    );
  }
}
