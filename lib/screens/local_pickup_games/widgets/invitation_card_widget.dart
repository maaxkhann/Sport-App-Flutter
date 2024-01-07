import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant_widgets/constant_round_button.dart';
import '../local_pickup_games_screen3.dart';

class InvitationCardWidget extends StatelessWidget {
  const InvitationCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFF2B2B3D),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        child: Column(
          children: [
            Text(
              'Jayflex Invited you to a 5 aside basketball game',
              style: bodyTextStyle,
            ),
            SizedBox(
              height: Get.height * 0.030,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundButton(
                    onPressed: () {},
                    buttonColor: const Color(0xFF6B7588),
                    titleColor: const Color(0xFFFFFFFF),
                    title: 'Accept'),
                RoundButton(
                    onPressed: () {},
                    buttonColor: const Color(0xFF343E54),
                    titleColor: const Color(0xFFC7C9D9),
                    title: 'View Details'),
                RoundButton(
                    onPressed: () {},
                    buttonColor: const Color(0xFF343E54),
                    titleColor: const Color(0xFFC7C9D9),
                    title: 'Decline'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
