import 'package:flutter/material.dart';
import 'package:google_maps/core/constant/my_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    required this.textEditingController,
    this.prefix,
    this.keyboardType,
    this.validator,
  });
  final String? hintText;
  final TextEditingController textEditingController;
  final String? prefix;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return TextFormField(
      cursorColor: MyColors.kGreen,
      controller: textEditingController,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          fontSize: w * 0.04,
          fontWeight: FontWeight.bold,
          color: MyColors.kGreen,
        ),

        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: MyColors.kGreen),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: MyColors.kGreen),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: MyColors.kGreen),
        ),
      ),
    );
  }
}
