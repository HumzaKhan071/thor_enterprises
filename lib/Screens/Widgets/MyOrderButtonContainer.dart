import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thor_enterprises/Utils/Colors.dart';

class MyOrderButtonContainer extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  const MyOrderButtonContainer({
    Key? key,
    required this.color,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 150,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: color),
      ),
      child: Center(
        child: Text(
          text,
          maxLines: 1,
          style: GoogleFonts.montserrat(
            fontSize: 20,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
