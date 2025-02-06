import 'package:flutter/material.dart';
import 'package:flutterforge/presentation/shared/extension.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final double? width;
  final double? height;
  final Color? bgColor;
  final Color? textColor;
  final VoidCallback? onTap;

  const CustomButton({
    Key? key,
    this.title,
    this.bgColor,
    this.textColor,
    this.onTap,
    this.width, this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        padding: EdgeInsets.symmetric(
            horizontal: 10, vertical: context.screenHeight * 0.015),
        decoration: BoxDecoration(
            color: bgColor ?? Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          title ?? "Button",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor ?? Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w600,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
        ),
      ),
    );
  }
}
