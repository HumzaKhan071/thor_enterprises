import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thor_enterprises/Screens/DashboardScreen.dart';
import 'package:thor_enterprises/Screens/Models/MyButtonContainer.dart';
import 'package:thor_enterprises/Utils/Colors.dart';
import 'Models/MyContainer.dart';
import 'Models/MyDroneContainer.dart';
import 'Widgets/MyButtonContainer.dart';
import 'Widgets/MyContainer.dart';
import 'Widgets/MyDroneContainer.dart';
import 'Widgets/MyOrderContainer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor,
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
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          myContainerModel.length,
                          (index) => Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: MyContainer(
                                  image: myContainerModel[index].image,
                                  title: myContainerModel[index].title,
                                  subtitle: myContainerModel[index].subtitle,
                                ),
                              ))),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("MY STORAGE",
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: 250,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          myDroneContainerModel.length,
                          (index) => Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: MyDroneContainer(
                              image: myDroneContainerModel[index].image,
                              number: myDroneContainerModel[index].number,
                            ),
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("MY ORDERS",
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          myButtonContainerModel.length,
                          (index) => Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: MyButtonContainer(
                                    color: myButtonContainerModel[index].color,
                                    text: myButtonContainerModel[index].text,
                                    btnTextColor: myButtonContainerModel[index]
                                        .btnTextColor),
                              ))),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => MyDashboardScreen()));
                    },
                    child: MyOrderContainer())
              ],
            ),
          ),
        ));
  }
}
