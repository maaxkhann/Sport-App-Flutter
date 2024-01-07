

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../standings_view.dart';

class TeamsInfoRow extends StatelessWidget {
  final String flag;
  final String teamName;
  final int d;
  final int l;
  final int ga;
  final int gd;
  final int pts;

  const TeamsInfoRow({
    super.key,
    required this.flag,
    required this.teamName,
    required this.d,
    required this.l,
    required this.ga,
    required this.gd,
    required this.pts,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
          child: Row(
            children: [
              Flexible(
                child: Row(
                  children: [
                    SizedBox(
                      height: 17,
                      width: 17,
                      child: Image.asset('assets/standing-view-icons/$flag.png'),
                    ),
                    SizedBox(
                      width: Get.width * 0.027,
                    ),
                    Text(
                      teamName,
                      style: bodyText,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: Get.width * 0.12,
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      d.toString(),
                      style: bodyText,
                    ),
                    Text(
                      l.toString(),
                      style: bodyText,
                    ),
                    Text(
                      ga.toString(),
                      style: bodyText,
                    ),
                    Text(
                      gd.toString(),
                      style: bodyText,
                    ),
                    Text(
                      pts.toString(),
                      style: bodyText,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 178),
          child: Divider(
            thickness: 1,
            color: Color(0xFF181829),
          ),
        ),
      ],
    );
  }
}
