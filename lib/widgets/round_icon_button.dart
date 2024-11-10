import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RoundIconButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: Colors.yellow,

        padding:
            EdgeInsets.all((screenWidth * 0.07)), // Adjust padding as needed
      ),
      child: Icon(
        Icons.arrow_forward,
        color: Colors.grey,
        size: (screenHeight * 0.06),
      ),
    );
  }
}
