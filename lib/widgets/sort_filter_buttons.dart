import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SortFilterButton extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color boxColor;
  final Color textColor;
  final Color iconColor;
  final FontWeight fontWeight;
  const SortFilterButton({
    required this.name,
    required this.icon,
    required this.boxColor,
    required this.textColor,
    required this.iconColor,
    required this.fontWeight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color.fromARGB(255, 239, 239, 239)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            name,
            style: GoogleFonts.montserrat(
              color: textColor,
              fontWeight: fontWeight,
            ),
          ),
          const SizedBox(width: 4),
          Icon(icon, color: iconColor),
        ],
      ),
    );
  }
}
