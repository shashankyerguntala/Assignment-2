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
    return Column(children: [Image.asset(imagePath, height: 76), Text(label)]);
  }
}
