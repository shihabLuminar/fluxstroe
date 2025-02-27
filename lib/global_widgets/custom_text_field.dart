import 'package:flutter/material.dart';
import 'package:fluxstroe/utils/constatns/color_constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final double bottomPadding;
  final TextEditingController? controller;

  const CustomTextField(
      {super.key,
      required this.hintText,
      this.bottomPadding = 20,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: ColorConstants.black,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.lightGrey1),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.black),
          ),
        ),
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
      ),
    );
  }
}
