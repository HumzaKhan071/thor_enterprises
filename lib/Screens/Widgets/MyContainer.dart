import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyContainer extends StatelessWidget {
   const MyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                color:  Color(0xff4E554E),
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding:  EdgeInsets.all(15.0),
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
                              child: Image.asset("assets/drone.png")),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pro Drone Corp.",
                                style: GoogleFonts.montserrat(
                                    fontSize: 20, color: Colors.white),
                              ),
                               SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                   Icon(
                                    Icons.location_pin,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "London, UK",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 18, color: Colors.white),
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
                          color:  Color(0xff6D746F),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:  Icon(
                          Icons.edit_calendar,
                          color: Colors.white,
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
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("9 am - 6 pm",
                          style: GoogleFonts.montserrat(
                              fontSize: 17, color: Colors.white)),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("4.5  (Reviews)",
                          style: GoogleFonts.montserrat(
                              fontSize: 17, color: Colors.white)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color:  Color(0xff6D746F),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "View as Client",
                        style: GoogleFonts.montserrat(
                            fontSize: 20, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
