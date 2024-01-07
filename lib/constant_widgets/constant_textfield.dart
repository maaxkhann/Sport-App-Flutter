import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConstantTextField extends StatelessWidget {
  final String hintText;
  final String? prefixIcon;
  final IconButton? suffixIcon;
  final bool isPasswordVisible;

  const ConstantTextField({
    Key? key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.isPasswordVisible = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPasswordVisible,
      style: const TextStyle(color: Color(0xFF65656B)),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 14, color: Color(0xFF65656B)),
        prefixIcon: SvgPicture.asset(prefixIcon ?? '',
          height: 20.0,
          width: 20.0, fit: BoxFit.scaleDown,
          color: const Color(0xFF65656B),),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: const Color(0xFF181829),
        //  border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}