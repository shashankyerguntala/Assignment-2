import 'package:flutter/material.dart';

class AllFeaturesWidget extends StatelessWidget {
  final String label;
  final String imagePath;

  const AllFeaturesWidget({
    super.key,
    required this.label,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [Image.asset(imagePath, height: 76), Text(label)],
      ),
    );
  }
}
