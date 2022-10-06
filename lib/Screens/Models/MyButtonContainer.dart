import 'package:flutter/material.dart';
import 'package:thor_enterprises/Utils/Colors.dart';

class MyButtonContainerModel {
  final Color color;
  final String text;
  final Color btnTextColor;

  MyButtonContainerModel(
      {required this.color, required this.text, required this.btnTextColor});
}

List<MyButtonContainerModel> myButtonContainerModel = [
  MyButtonContainerModel(
      color: secondaryColor, text: "Upcoming", btnTextColor: Colors.black),
  MyButtonContainerModel(
      color: secondaryColor, text: "Active", btnTextColor: Colors.black),
  MyButtonContainerModel(
      color: buttonColor, text: "Completed", btnTextColor: Colors.black),
];
