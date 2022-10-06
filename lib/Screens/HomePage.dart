import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Widgets/MyButtonContainer.dart';
import 'Widgets/MyContainer.dart';
import 'Widgets/MyDroneContainer.dart';
import 'Widgets/MyOrderContainer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C251D),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff1C251D),
          title: Text(
            "Trade Point",
            style: GoogleFonts.montserrat(
              fontSize: 18,
            ),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
                Text(
                  "Add new",
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyContainer(),
                SizedBox(
                  height: 20,
                ),
                Text("MY STORAGE",
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20,
                ),
                MyDroneContainer(),
                SizedBox(
                  height: 20,
                ),
                Text("MY ORDERS",
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      MyButtonContainer(
                        color: Color(0xff393939),
                        text: "Upcoming",
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      MyButtonContainer(
                        color: Color(0xff393939),
                        textColor: Colors.white,
                        text: "Active",
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      MyButtonContainer(
                        color: Color(0xffC1EE33),
                        text: "Completed",
                        textColor: Colors.black,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MyOrderContainer()
              ],
            ),
          ),
        ));
  }
}
