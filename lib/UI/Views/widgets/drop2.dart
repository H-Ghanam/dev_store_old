// ignore_for_file: prefer_const_constructors_in_immutables, no_leading_underscores_for_local_identifiers

import 'package:dev_store/UI/Views/screens/login.dart';
import 'package:fluent_ui/fluent_ui.dart';
// import 'package:flutter/material.dart';
class Drop2 extends StatefulWidget {
  Drop2({Key? key}) : super(key: key);

  @override
  State<Drop2> createState() => _Drop2State();
}

class _Drop2State extends State<Drop2> {
  @override
  Widget build(BuildContext context) {
      Size _size = MediaQuery.of(context).size;
    return  Container(
              width: _size.width,
              height: 30,
              color: Colors.white,
              child: Row(
                children: [
                  DropDownButton(verticalOffset: 8,placement: FlyoutPlacement.start,trailing: Text("Wings",style: TextStyle(fontFamily: "En",color: Colors.blue.darkest,fontWeight: FontWeight.bold,fontSize: 15),),items: [
                    MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                      MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                      MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                    MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                  ]),
                  DropDownButton(verticalOffset: 8,placement: FlyoutPlacement.start,trailing: const Text("الحسابات",style: TextStyle(fontFamily: "Hind4"),),items: [
                    MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                      MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                      MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                    MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                  ]),
                  DropDownButton(verticalOffset: 8,placement: FlyoutPlacement.start,trailing: const Text("الفواتير",style: TextStyle(fontFamily: "Hind4"),),items: [
                    MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                      MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                      MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                    MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                  ]),
                  DropDownButton(verticalOffset: 8,placement: FlyoutPlacement.start,trailing: const Text("التقارير",style: TextStyle(fontFamily: "Hind4"),),items: [
                    MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                      MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                      MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                    MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                  ]),
                  DropDownButton(verticalOffset: 8,placement: FlyoutPlacement.start,trailing: const Text("الخزينة",style: TextStyle(fontFamily: "Hind4"),),items: [
                    MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                      MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                      MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                    MenuFlyoutItem(
                      text: const Text("                                                            data"),
                      onPressed: () {},
                    ),
                  ]),
                  const SizedBox(width: 50,),
                  Text("المستخدم:  ${appData.activeUsers![select].title}",style: const TextStyle(fontFamily: "Hind4"))
                ],
              ));
  }
}