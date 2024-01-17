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
  final bool? isPrefixImage;

  const SingleChatContainer(
      {super.key,
      required this.text,
      required this.imageUrl,
      required this.time,
      this.voice,
      this.containerColor,
      this.topLeftRadius,
      this.bottomRightRadius,
      this.isPrefixImage = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          isPrefixImage == true
              ? Padding(
                  padding: EdgeInsets.only(
                      right: Get.width * 0.02, bottom: Get.height * 0.02),
                  child: CircleAvatar(
                    radius: 18,
                    child: Image.asset(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(right: Get.width * 0.02),
                  child: Text(
                    time,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFC7C9D9)),
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
                            FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Row(
                                children: [
                                  Image.asset(
                                    voice.toString(),
                                    width: Get.width * 0.5,
                                    height: Get.height * 0.03,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: kWhite),
                                      child: const Icon(
                                        Icons.pause,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
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
          isPrefixImage == false
              ? Padding(
                  padding: EdgeInsets.only(
                      right: Get.width * 0.03,
                      bottom: Get.height * 0.02,
                      left: Get.width * 0.03),
                  child: CircleAvatar(
                    radius: 18,
                    child: Image.asset(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(
                    left: Get.width * 0.02,
                  ),
                  child: Text(
                    time,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFC7C9D9)),
                  ),
                ),
        ],
      ),
    );
  }
}
