import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButtonContainer extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  const MyButtonContainer({
    Key? key,
    required this.color,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: 20,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
