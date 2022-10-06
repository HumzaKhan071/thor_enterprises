import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widgets/MyDashboardContainer.dart';

class MyDashboardScreen extends StatelessWidget {
  MyDashboardScreen({super.key});
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C251D),
      appBar: AppBar(
        backgroundColor: Color(0xff1C251D),
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
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Current Balance",
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: Colors.white,
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
                  color: Color(0xffC1EE33),
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
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff393939),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Average Check",
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Color(0xffC1EE33),
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
