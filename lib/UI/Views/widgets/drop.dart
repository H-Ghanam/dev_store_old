import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart' as p;

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
     DropdownMenuItem(
        child: Text(
          "Wings",
          style:
              TextStyle(fontFamily: "En", fontSize: 16,fontWeight: FontWeight.bold, color: Colors.blue.shade900),
        ),
        value: "Wings"),
    const DropdownMenuItem(
        child: Text(
          "الحسابات",
          style:
              TextStyle(color: Colors.black, fontSize: 15, fontFamily: "Hind4"),
        ),
        value: "الحسابات"),
    const DropdownMenuItem(
        child: Text(
          "الخزينة",
          style:
              TextStyle(color: Colors.black, fontSize: 15, fontFamily: "Hind4"),
        ),
        value: "الخزينة"),
    const DropdownMenuItem(
        child: Text(
          "التقارير",
          style:
              TextStyle(color: Colors.black, fontSize: 15, fontFamily: "Hind4"),
        ),
        value: "التقارير"),
    const DropdownMenuItem(
        child: Text(
          "الفواتير",
          style:
              TextStyle(color: Colors.black, fontSize: 15, fontFamily: "Hind4"),
        ),
        value: "الفواتير"),
    const DropdownMenuItem(
        child: Text(
          "إشتراكي",
          style:
              TextStyle(color: Colors.black, fontSize: 15, fontFamily: "Hind4"),
        ),
        value: "إشتراكي"),
  ];
  return menuItems;
}
