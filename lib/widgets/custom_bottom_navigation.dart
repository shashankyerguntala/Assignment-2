import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home, color: Colors.red),
                Text("Home", style: TextStyle(color: Colors.red)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.favorite_border, color: Colors.black),
                Text("Wishlist", style: TextStyle(color: Colors.black)),
              ],
            ),

            SizedBox(width: 40),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.search, color: Colors.black),
                Text("Search", style: TextStyle(color: Colors.black)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.settings, color: Colors.black),
                Text("Setting", style: TextStyle(color: Colors.black)),
              ],
            ),
          ],
        ),
      )
;
  }
}