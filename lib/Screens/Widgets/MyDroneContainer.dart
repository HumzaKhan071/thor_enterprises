import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thor_enterprises/Utils/Colors.dart';

class MyDroneContainer extends StatelessWidget {
  final String image;
  final String number;
  const MyDroneContainer({
    Key? key,
    required this.image,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          number,
                          style: GoogleFonts.montserrat(
                            fontSize: 30,
                            color: textColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "drones",
                          style: GoogleFonts.montserrat(
                            fontSize: 17,
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "in your storage",
                      style: GoogleFonts.montserrat(
                        fontSize: 17,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
                Image.asset(image, height: 100)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  "View Storage",
                  style: GoogleFonts.montserrat(fontSize: 20, color: textColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
