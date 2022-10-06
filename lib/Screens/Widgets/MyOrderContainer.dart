import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thor_enterprises/Screens/Widgets/MyOrderButtonContainer.dart';
import 'package:thor_enterprises/Utils/Colors.dart';

class MyOrderContainer extends StatelessWidget {
  const MyOrderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                color: secondaryColor, borderRadius: BorderRadius.circular(30)),
            child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 60,
                            width: 70,
                            decoration: BoxDecoration(
                                color: textColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset("assets/drone1.png")),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "DJI Phantom 2",
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  color: textColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "\$100 /day",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  color: textColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Total \$ 240 ",
                              style: GoogleFonts.montserrat(
                                fontSize: 23,
                                color: textColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: textColor,
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyOrderButtonContainer(
                              color: buttonColor,
                              text: "COMPLETED",
                              textColor: buttonColor),
                          SizedBox(width: 3),
                          MyOrderButtonContainer(
                              color: primaryColor,
                              text: "Daily",
                              textColor: textColor),
                          SizedBox(width: 3),
                          MyOrderButtonContainer(
                              color: primaryColor,
                              text: "AUG 21",
                              textColor: textColor),
                        ],
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
