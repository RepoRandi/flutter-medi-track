import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/utils/themes/themes.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final double fontSize;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor = primary,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: textColor,
      ),
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
