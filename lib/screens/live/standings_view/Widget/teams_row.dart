

import 'package:flutter/material.dart';

import '../standings_view.dart';

class TeamsRow extends StatelessWidget {
  const TeamsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
          child: Row(
            children: [
              Text(
                'Teams',
                style: bodyText,
              ),
              const Spacer(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'D',
                      style: bodyText,
                    ),
                    Text(
                      'L',
                      style: bodyText,
                    ),
                    Text(
                      'Ga',
                      style: bodyText,
                    ),
                    Text(
                      'Gd',
                      style: bodyText,
                    ),
                    Text(
                      'Pts',
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
        )
      ],
    );
  }
}