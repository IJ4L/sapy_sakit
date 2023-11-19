import 'package:flutter/material.dart';

class CostumeButton extends StatelessWidget {
  const CostumeButton({
    super.key,
    required this.textTitle,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
  });

  final String textTitle;

  final Color backgroundColor;
  final Color textColor;
  final Color borderColor = const Color(0xff224d57);

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.grey.shade200,
          backgroundColor: backgroundColor,
          shadowColor: Colors.transparent,
          disabledForegroundColor: Colors.transparent.withOpacity(0.38),
          disabledBackgroundColor: Colors.transparent.withOpacity(0.12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          side: BorderSide(
            color: borderColor,
            width: 1,
          ),
        ),
        child: Text(
          textTitle,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
