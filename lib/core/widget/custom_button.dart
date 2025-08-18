import 'package:easy_loading_button/easy_loading_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps/core/constant/my_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  final String label;
  final Future<void> Function() onTap;

  @override
  Widget build(BuildContext context) {
    return EasyButton(
      idleStateWidget: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      loadingStateWidget: const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      ),
      useEqualLoadingStateWidgetDimension: true,
      width: double.infinity,
      height: 50,
      borderRadius: 12,
      buttonColor: MyColors.kGreen,
      onPressed: onTap,
    );
  }
}
