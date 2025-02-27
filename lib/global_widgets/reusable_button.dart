import 'package:flutter/material.dart';
import 'package:fluxstroe/utils/constatns/color_constants.dart';

class ReusableButton extends StatelessWidget {
  final String name;
  final void Function() onButtonPressed;
  final Color backgroundColor;
  final Color? borderColor;
  final Color textColor;
  final int alpha;

  const ReusableButton(
      {super.key,
      required this.name,
      required this.onButtonPressed,
      this.backgroundColor = ColorConstants.white,
      this.textColor = ColorConstants.white,
      this.borderColor = ColorConstants.white,
      this.alpha = 255});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 53, vertical: 15),
        decoration: BoxDecoration(
            border: borderColor != null
                ? Border.all(color: borderColor!, width: 1.18)
                : null,
            borderRadius: BorderRadius.circular(29.5),
            color: backgroundColor.withAlpha(alpha)),
        child: Text(
          name,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: textColor),
        ),
      ),
    );
  }
}
