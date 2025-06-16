import 'package:flutter/material.dart';

import 'package:shamo_frontend/theme.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.text,
    this.press,
    // ignore: non_constant_identifier_names
    this.margin_top,
  });
  final String? text;
  // ignore: non_constant_identifier_names
  final double? margin_top;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.only(top: margin_top!),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          foregroundColor: Colors.white,
          backgroundColor: primaryColor,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semibold,
          ),
        ),
      ),
    );
  }
}
