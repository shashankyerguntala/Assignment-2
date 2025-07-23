import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/widgets/sort_filter_buttons.dart';

class HotSummer extends StatelessWidget {
  const HotSummer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),

          color: Colors.white,
        ),
        width: double.infinity,
        height: 295,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/hot_summer.png",
              height: 210,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                "New Arrivals ",
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  Text(
                    "Summer’ 25 Collections ",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  SortFilterButton(
                    name: 'view all',
                    icon: Icons.arrow_forward,
                    boxColor: Color.fromRGBO(248, 55, 88, 1),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
