
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDashboardContainer extends StatelessWidget {
  final IconData icon;
  final String text;
  final String num;
  const MyDashboardContainer({
    Key? key,
    required this.icon,
    required this.text,
    required this.num,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 190,
        decoration: BoxDecoration(
          color: Color(0xff393939),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xff1C251D), shape: BoxShape.circle),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(text,
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(num,
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ));
  }
}
