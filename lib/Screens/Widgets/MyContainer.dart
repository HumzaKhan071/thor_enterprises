import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thor_enterprises/Utils/Colors.dart';

class MyContainer extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const MyContainer({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: Image.asset(image)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.montserrat(
                              fontSize: 20, color: textColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: textColor,
                            ),
                            Text(
                              subtitle,
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, color: textColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    Icons.edit_calendar,
                    color: textColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.lock_clock_outlined,
                  color: textColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("9 am - 6 pm",
                    style: GoogleFonts.montserrat(
                        fontSize: 17, color: textColor)),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.star,
                  color: textColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("4.5  (Reviews)",
                    style: GoogleFonts.montserrat(
                        fontSize: 17, color: textColor)),
              ],
            ),
            SizedBox(
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
                  "View as Client",
                  style:
                      GoogleFonts.montserrat(fontSize: 20, color: textColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
