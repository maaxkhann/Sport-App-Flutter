import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
        required this.textControllers,
        required this.maxLength,
        required this.index});

  final List<TextEditingController> textControllers;
  final int maxLength;
  final int index;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textControllers[index],
      textInputAction: TextInputAction.done,
      maxLength: maxLength,
      decoration: InputDecoration(
        hintText: 'Option ${index + 1}',
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Color(0xFF6B7588))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Color(0xFF8F90A6))),
        counterText: '',
      ),
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color(0xFF6B7588),
      ),
    );
  }
}
