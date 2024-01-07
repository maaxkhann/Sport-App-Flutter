import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PollsWidget extends StatelessWidget {
  final List<PollOption> options = [
    PollOption(text: 'Rucker’s Park', percentage: 24),
    PollOption(text: 'South Beach', percentage: 56),
    PollOption(text: 'Venice Beach', percentage: 15),
    PollOption(text: 'Others. (Pls drop options in comment)', percentage: 1),
  ];

   PollsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: options.map((option) {
        return InkWell(
          radius: 50,
          onTap: () {},
          child: Container(
            width: double.infinity,
            height: 32,
            decoration: BoxDecoration(
              color: const Color(0xFF333351),
              borderRadius: BorderRadius.circular(2.0),
            ),
            margin: const EdgeInsets.all(5.0),
            child: PollBar(option: option),
          ),
        );
      }).toList(),
    );
  }
}

class PollBar extends StatelessWidget {
  final PollOption option;

  const PollBar({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          splashColor: Colors.white,
          radius: 50,
          onTap: () {},
          child: Container(
            width: Get.width * option.percentage / 100, // Adjust the width based on the percentage// Adjust the width based on the percentage
            height: 32.0,
            decoration: BoxDecoration(
              color: const Color(0xFF39D98A),
              borderRadius: BorderRadius.circular(2.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                option.text,
                softWrap: false,
                overflow: TextOverflow.visible,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400 ,color: Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('${option.percentage}%', style: const TextStyle(fontSize: 14, color: Colors.white)),
        ),
      ],
    );
  }
}

class PollOption {
  final String text;
  final int percentage;

  PollOption({required this.text, required this.percentage});
}