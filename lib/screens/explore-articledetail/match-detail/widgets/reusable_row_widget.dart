import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReUsableRow extends StatelessWidget {
  final String text;
  final String text2;
  final String text3;
  final String? icon;
  const ReUsableRow(
      {super.key,
      required this.text,
      required this.text2,
      required this.text3,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Get.width * 0.09),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(text,
              style: const TextStyle(
                fontSize: 20,
                //fontFamily = FontFamily(Font(R.font.source sans pro)),
                fontWeight: FontWeight.w400,
                color: Color(0xFFFFFFFF),
              )),
          icon != null
              ? Row(
                  children: [
                    Image.asset(icon.toString()),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(text2,
                        style: const TextStyle(
                          fontSize: 20,
                          //fontFamily : FontFamily(Font(R.font.source sans pro)),
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFC4C4C4),
                        )),
                  ],
                )
              : Text(text2,
                  style: const TextStyle(
                    fontSize: 20,
                    //fontFamily : FontFamily(Font(R.font.source sans pro)),
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFC4C4C4),
                  )),
          Text(text3,
              style: const TextStyle(
                fontSize: 20,
                //fontFamily = FontFamily(Font(R.font.source sans pro)),
                fontWeight: FontWeight.w400,
                color: Color(0xFFFFFFFF),
              )),
        ],
      ),
    );
  }
}
