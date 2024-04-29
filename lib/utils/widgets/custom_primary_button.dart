import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/utils/themes/themes.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;

  const CustomPrimaryButton({
    super.key,
    required this.label,
    this.icon,
    required this.onPressed,
    this.backgroundColor = primary,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        textStyle:
            GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minimumSize: const Size(double.infinity, 48),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox.shrink(),
          Text(label, style: TextStyle(color: textColor)),
          Icon(icon, color: textColor),
        ],
      ),
    );
  }
}
