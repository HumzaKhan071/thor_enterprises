import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thor_enterprises/Screens/Widgets/Mychart.dart';
import 'package:thor_enterprises/Utils/Colors.dart';

import 'Widgets/MyDashboardContainer.dart';

class MyDashboardScreen extends StatelessWidget {
  MyDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Initial Selected Value
    String dropdownvalue = 'Item 1';

    // List of items in our dropdown menu
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          "Store Dashboard",
          style: GoogleFonts.montserrat(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      "\$ 4.25k",
                      style: GoogleFonts.montserrat(
                          fontSize: 40,
                          color: textColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Current Balance",
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: textColor,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text("Widthdraw Funds",
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    MyDashboardContainer(
                      icon: Icons.shopping_bag,
                      text: "Orders",
                      num: "63",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MyDashboardContainer(
                      icon: Icons.remove_red_eye,
                      text: "Store Views",
                      num: "7243",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MyDashboardContainer(
                      icon: Icons.percent,
                      text: "Net Sale",
                      num: "72%",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 430,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Average Check",
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: DropdownButton(
                            underline: Container(),
                            borderRadius: BorderRadius.circular(20),
                            elevation: 0,
                            value: dropdownvalue,
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              dropdownvalue = newValue!;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      LineChartSample2()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
