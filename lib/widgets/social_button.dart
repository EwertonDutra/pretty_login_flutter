import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pretty_login/pallete.dart';

class SocialButton extends StatelessWidget {
  final String iconName;
  final String label;
  final double horizontalPadding;
  final VoidCallback onPressed;

  const SocialButton({
    super.key,
    required this.iconName,
    required this.label,
    this.horizontalPadding = 70.0,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        'assets/svgs/$iconName.svg',
        width: 25,
        colorFilter: const ColorFilter.mode(
          Pallete.whiteColor,
          BlendMode.srcIn,
        ),
      ),
      label: Text(
        label,
        style: const TextStyle(
          color: Pallete.whiteColor,
          fontSize: 17,
        ),
      ),
      style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: 30,
            horizontal: horizontalPadding,
          ),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Pallete.borderColor, width: 3),
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
