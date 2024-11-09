import 'dart:math';

import 'package:flutter/material.dart';

class MaskedImageWidget extends StatelessWidget {
  final String imagePath;

  const MaskedImageWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: ClipPath(
        clipper: RandomShapeClipper(),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          
        ),
      ),
    );
  }
}

class RandomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    // Generate random shapes here, e.g., circles, squares, or more complex shapes
    // For example, a random circle:
    final randomRadius = size.width;
    final randomX = size.width * 1;
    final randomY = size.height * 1;
    path.addOval(Rect.fromCircle(
        center: Offset(randomX, randomY), radius: randomRadius));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
