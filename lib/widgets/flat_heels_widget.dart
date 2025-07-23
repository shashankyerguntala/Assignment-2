import 'package:flutter/material.dart';

import 'package:shopping_app/widgets/sort_filter_buttons.dart';

class FlatHeelsWidget extends StatelessWidget {
  const FlatHeelsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: 200,
      width: 400,
      child: Row(
        children: [
          Image.asset(
            "assets/flat_heels/bar.png",
            height: 200,
            fit: BoxFit.fill,
          ),
          
          Expanded(
            child: Container(
              height: 170,
              
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 234, 234, 234),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: -10,
    
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset('assets/flat_heels/particle.png'),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 25,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset('assets/flat_heels/heels.png'),
                    ),
                  ),
                  Positioned(
                    left: 140,
                    top: 40,
                    child: Column(
                      children: [
                        Text(
                          'Flat and Heels',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Stand a chance to get rewarded',
                          style: TextStyle(fontSize: 12),
                        ),
                        const SizedBox(height: 8),
                        SortFilterButton(
                          name: 'Visit Now ',
                          icon: Icons.arrow_forward,
                          boxColor: Colors.red,
                          textColor: const Color.fromARGB(
                            255,
                            255,
                            255,
                            255,
                          ),
                          iconColor: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
