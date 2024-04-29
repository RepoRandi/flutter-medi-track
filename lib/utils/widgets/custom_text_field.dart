import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/utils/themes/themes.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String? subLabel;
  final String hintText;
  final Widget? suffixIcon;
  final double? borderRadius;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    this.label,
    this.subLabel,
    required this.hintText,
    this.suffixIcon,
    this.borderRadius = 8.0,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (label != null)
              Text(
                label!,
                style: GoogleFonts.montserrat(
                    fontSize: 16, fontWeight: FontWeight.w600, color: title),
              ),
            if (subLabel != null)
              Text(
                subLabel!,
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.w600, color: subTitle),
              ),
          ],
        ),
        if (label != null) const SizedBox(height: 16),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: GoogleFonts.montserrat(
                fontSize: 12, fontWeight: FontWeight.w400, color: lowGrey),
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(borderRadius!),
            ),
          ),
        ),
      ],
    );
  }
}
