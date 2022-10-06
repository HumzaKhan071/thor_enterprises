import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      height: 40,
      width: 150,
      decoration: BoxDecoration(
        color: Color(0xff393939),
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
