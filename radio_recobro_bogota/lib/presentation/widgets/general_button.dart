import 'package:flutter/material.dart';

class GeneralButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Color color;
  final Color? colorText;
  final VoidCallback onTap;
  const GeneralButton({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.color,
    required this.colorText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: MaterialButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: color,
        onPressed: onTap,
        child: Container(
          constraints: BoxConstraints(maxWidth: width, minHeight: height),
          alignment: Alignment.center,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: colorText),
          ),
        ),
      ),
    );
  }
}
