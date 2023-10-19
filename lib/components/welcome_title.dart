import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({
    super.key,
    required this.title,
    required this.fontWeight,
    required this.color,
    required this.fontSize,
    required this.textDecoration,
  });
  static final TextStyle googleFontStyle = GoogleFonts.inter();
  final String? title;
  final FontWeight fontWeight;
  final Color color;
  final double fontSize;
  final TextDecoration textDecoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      title??'',
      style: googleFontStyle.copyWith(
          decoration: textDecoration,
          color: color,
          fontWeight: fontWeight,
          letterSpacing: 1.2,
          fontSize: fontSize),
    );
  }
}
