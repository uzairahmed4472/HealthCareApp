import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPress;
  final Color? textColor;
  final Color? backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final bool isLoading;
  final double elevation;
  final double borderWidth;
  final Color borderColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPress,
    this.textColor = Colors.black,
    this.backgroundColor = const Color(0xFFFFD700),
    this.fontSize = 16,
    this.fontWeight = FontWeight.bold,
    this.borderRadius = 20.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
    this.isLoading = false,
    this.elevation = 2.0,
    this.borderWidth = 0.0,
    this.borderColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPress,
      child: isLoading
          ? CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(textColor!),
            )
          : Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: textColor,
              ),
            ),
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor,
        backgroundColor: backgroundColor,
        padding: padding,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(width: borderWidth, color: borderColor),
        ),
      ),
    );
  }
}
