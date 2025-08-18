import 'package:flutter/material.dart';
import 'package:google_maps/core/constant/my_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    required this.textEditingController,
    this.prefix, this.keyboardType,
  });
  final String? hintText;
  final TextEditingController textEditingController;
  final String? prefix;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: MyColors.kGreen,
      controller: textEditingController,
      keyboardType: keyboardType ,
      decoration: InputDecoration(
        prefix: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            prefix ?? "",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
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
