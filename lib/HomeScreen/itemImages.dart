import 'package:flutter/material.dart';

class Itemimages extends StatelessWidget {
  final String imagePath;
  final String text;
  final double imageSize;
  final double textSize;
  final Color textColor;
  final double borderRadius;

  const Itemimages({
    super.key,
    required this.imagePath,
    required this.text,
    this.imageSize = 50,
    this.textSize = 14,
    this.textColor = Colors.black,
    this.borderRadius = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 2),
      child: Column(
        children: [
          // Image Container
          Container(
            width: imageSize,
            height: imageSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          // Text
          Text(
            text,
            style: TextStyle(
              fontSize: textSize,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
