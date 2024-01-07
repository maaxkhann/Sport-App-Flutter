

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../standings_details.dart';

class TeamInfoRow extends StatelessWidget {
  final int no;
  final String flag;
  final String teamName;
  final int d;
  final int l;
  final int ga;
  final int gd;
  final int pts;
  final Color? color;

  const TeamInfoRow({
    super.key,
    required this.no,
    required this.flag,
    required this.teamName,
    required this.d,
    required this.l,
    required this.ga,
    required this.gd,
    required this.pts,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.only(bottom: 14),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Row(children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                no.toString(),
                style: bodyTextStyle,
              ),
              SizedBox(
                height: 17,
                width: 17,
                child: Image.asset('assets/standing-view-icons/$flag.png'),
              ),
              Text(
                teamName,
                style: bodyTextStyle,
              ),
            ],
          ),
        ),
        SizedBox(width: Get.width * 0.13),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                d.toString(),
                style: bodyTextStyle,
              ),
              Text(
                l.toString(),
                style: bodyTextStyle,
              ),
              Text(
                ga.toString(),
                style: bodyTextStyle,
              ),
              Text(
                gd.toString(),
                style: bodyTextStyle,
              ),
              Text(
                pts.toString(),
                style: bodyTextStyle,
              ),
            ],
          ),
        )
      ]),
    );
  }
}