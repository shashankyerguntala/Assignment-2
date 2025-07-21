import 'package:flutter/material.dart';
import 'package:shopping_app/widgtes/sort_filter_buttons.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
              children: [
                SizedBox(
                  height: 250,
                  child: Image.asset(
                    'assets/discount.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '50-40%  OFF',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 1),
                      Text(
                        'Now in (product)',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),

                      Text(
                        'All colours',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      const SizedBox(height: 5),

                      SortFilterButton(
                        fontWeight: FontWeight.bold,
                        iconColor: Colors.white,
                        textColor: Colors.white,
                        name: 'Shop Now',
                        icon: Icons.arrow_forward,
                        boxColor: Colors.transparent,
                      ),
                    ],
                  ),
                ),
                
              ],
            );
  }
}