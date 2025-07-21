import 'package:flutter/material.dart';

class DealOfTheDay extends StatelessWidget {
  final String mainImagePath;
  final String label;
  final String mrp;
  final String price;
  final String discount;
  

  const DealOfTheDay({
    super.key,
    required this.mainImagePath,
    required this.label,
    required this.mrp,
    required this.price,
    required this.discount,
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Image.asset(
              height: 200,
              width: 200,
              mainImagePath,

              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 4, left: 8),
            child: Text(
              '₹$price',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              children: [
                Text(
                  '₹$mrp',
                  style: const TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(width: 6),
                Text(
                  '$discount off',
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset('assets/stars/star.png', height: 16, fit: BoxFit.contain),
                Image.asset('assets/stars/star.png', height: 16, fit: BoxFit.contain),
                Image.asset('assets/stars/star.png', height: 16, fit: BoxFit.contain),
                Image.asset('assets/stars/star.png', height: 16, fit: BoxFit.contain),
                Image.asset('assets/stars/halfstar.png', height: 14, fit: BoxFit.contain),
                const SizedBox(width: 7),
                const Text(
                  '56890',
                  style: TextStyle(
                    fontSize: 12,
                    
                    color: Colors.black,
                  ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
