// ignore_for_file: file_names

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as m;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../theme.dart';

class UpRow extends StatefulWidget {
  const UpRow({Key? key}) : super(key: key);

  @override
  State<UpRow> createState() => _UpRowState();
}

class _UpRowState extends State<UpRow> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final appTheme = context.watch<AppTheme>();
    Brightness brightness = FluentTheme.of(context).brightness;
    Typography typography = FluentTheme.of(context).typography;

    //-550
    return SizedBox(
      // width: (55.5 / 100) * size.width,
      width: size.width - 195,
      // width: size.width/13,
      // height: (13 / 100) * size.height,
      height: 142,
      // decoration: BoxDecoration(border: Border.all()),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            // width: (0.25 / 100) * size.width,
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                // height: (0.25 / 100) * size.height,
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // width: (1.25 / 100) * size.width,
                    width: 22, // height: (2.2 / 100) * size.height,
                    height: 22,
                    color: Colors.yellow.darker,
                    alignment: Alignment.center,
                    child: const Text(
                      "1",
                      style: TextStyle(
                          fontSize: 13, fontFamily: "", color: Colors.black),
                    ),
                  ),
                  const Text(
                    "  إبحث عن الصنف",
                    style: TextStyle(
                        fontFamily: "", fontSize: 12, color: Colors.black),
                  ),
                  const SizedBox(
                    // width: (6.8 / 100) * size.width,
                    width: 95,
                  ),
                  Container(
                    // width: (4.5 / 100) * size.width,
                    width: 55,
                    // height: (2.2 / 100) * size.height,
                    height: 23,
                    color: const Color.fromARGB(255, 204, 204, 204),
                  ),
                  const SizedBox(
                    // width: (0.2 / 100) * size.width,
                    width: 5,
                  ),
                  Container(
                      // width: (4.5 / 100) * size.width,
                      width: 55,
                      // height: (2.2 / 100) * size.height,
                      height: 23,
                      color: Colors.yellow.darker),
                  const SizedBox(
                    // width: (0.2 / 100) * size.width,
                    width: 5,
                  ),
                  Container(
                    // width: (4.5 / 100) * size.width,
                    width: 73,
                    // height: (2.2 / 100) * size.height,
                    height: 23,
                    color: Colors.yellow.darker,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          m.Icons.help_outlined,
                          textDirection: TextDirection.ltr,
                          // size: (1 / 100) * size.width,
                          size: 20,
                          color: Colors.black,
                        ),
                        Text(
                          "إستعلام",
                          style: TextStyle(
                              fontFamily: "",
                              fontSize: 13,
                              color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                // height: (0.25 / 100) * size.height,
                height: 5,
              ),
              Container(
                  width: 1+400,
                  // height: (4 / 100) * size.height,
                  height: 43,
                  padding: const EdgeInsets.all(0.7),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.8))),
                  child: Form(
                    child: TextBox(
                        decoration: BoxDecoration(color: appTheme.color)),
                  )),
              const SizedBox(
                // height: (0.25 / 100) * size.height,
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "الحساب",
                    style: TextStyle(
                        fontFamily: "", fontSize: 13, color: Colors.black),
                  ),
                  const SizedBox(
                    // width: (1.7 / 100) * size.width,
                    width: 20,
                  ),
                  Container(
                      // width: (11.8 / 100) * size.width,
                      width: 157,
                      // height: (2.5 / 100) * size.height,
                      height: 25,
                        // padding: const EdgeInsets.all(0.7),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.8))),
                      child:const  Form(child:TextBox())),
                  const SizedBox(
                    // width: (0.2 / 100) * size.width,
                    width: 5,
                  ),
                  Container(
                      // width: (2 / 100) * size.width,
                      width: 35,
                      // height: (2.5 / 100) * size.height,
                      height: 23,
                      color: const Color.fromARGB(255, 228, 228, 228)),
                  const SizedBox(
                    // width: (0.2 / 100) * size.width,
                    width: 5,
                  ),
                  Container(
                      // width: (4.6 / 100) * size.width,
                      width: 65,
                      // height: (2.5 / 100) * size.height,
                      height: 23,
                      color: const Color.fromARGB(255, 228, 228, 228)),
                  const SizedBox(
                    // width: (0.2 / 100) * size.width,
                    width: 5,
                  ),
                  Container(
                      // width: (4.6 / 100) * size.width,
                      width: 65,
                      // height: (2.5 / 100) * size.height,
                      height: 23,
                      color: const Color.fromARGB(255, 228, 228, 228))
                ],
              ),
              const SizedBox(
                // height: (0.25 / 100) * size.height,
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "ملاحظات",
                    style: TextStyle(
                        fontFamily: "", fontSize: 13, color: Colors.black),
                  ),
                  const SizedBox(
                    // width: (1 / 100) * size.width,
                    width: 13,
                  ),
                  Container(
                      // width: (23.8 / 100) * size.width,
                      width: 338,
                      // height: (2.5 / 100) * size.height,
                      height: 25,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.8))),
                      child: const Form(child: TextBox())),
                ],
              )
            ],
          ),
          const SizedBox(
            // width: (0.2 / 100) * size.width,
            width: 3,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                // height: (0.25 / 100) * size.height,
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // width: (1.25 / 100) * size.width,
                    width: 22, // height: (2.2 / 100) * size.height,
                    height: 22,
                    color: Colors.yellow.darker,
                    alignment: Alignment.center,
                    child: const Text("2",
                        style: TextStyle(
                            fontSize: 13, fontFamily: "", color: Colors.black)),
                  ),
                  const Text(
                    "  الكمية       ",
                    style: TextStyle(
                        fontFamily: "", fontSize: 12, color: Colors.black),
                  ),
                  const SizedBox(
                    // width: size.width/95,
                    width: 7,
                  ),
                  Container(
                    // width: (1.25 / 100) * size.width,
                    width: 22, // height: (2.2 / 100) * size.height,
                    height: 22,
                    color: Colors.yellow.darker,
                    alignment: Alignment.center,
                    child: const Text("3",
                        style: TextStyle(
                            fontSize: 13, fontFamily: "", color: Colors.black)),
                  ),
                  const Text(
                    "  سعر البيع",
                    style: TextStyle(
                        fontFamily: "", fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                // height: (0.25 / 100) * size.height,
                height: 5,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Container(
                      // width: (4.5 / 100) * size.width,
                      width: 1+85,
                      // height: (4 / 100) * size.height,
                      height: 43,
                      padding: const EdgeInsets.all(0.7),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.8))),
                      child: Form(
                          child: TextBox(
                              decoration:
                                  BoxDecoration(color: appTheme.color)))),
                  const SizedBox(
                    // width: (0.25 / 100) * size.width,
                    width: 3,
                  ),
                  // ignore: prefer_const_constructors
                  Container(
                      // width: (6 / 100) * size.width,
                      width: 1+120,
                      // height: (4 / 100) * size.height,
                      height: 43,
                      padding: const EdgeInsets.all(0.7),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.8))),
                      child: Form(
                          child: TextBox(
                              decoration:
                                  BoxDecoration(color: appTheme.color)))),
                ],
              ),
              const SizedBox(
                // height: (0.25 / 100) * size.height,
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Button(
                      style: ButtonStyle(
                          padding: ButtonState.all(const EdgeInsets.symmetric(
                              // horizontal: (0.5 / 100) * size.width,
                              horizontal: 1,
                              // vertical: (1.3 / 100) * size.height
                              vertical: 19))),
                      child: const Text(
                        "درج النقدية",
                        style: TextStyle(
                            fontFamily: "", fontSize: 12, color: Colors.black),
                      ),
                      onPressed: () {}),
                  const SizedBox(
                    // width: (0.05 / 100) * size.width,
                    width: 1.5,
                  ),
                  Button(
                      style: ButtonStyle(
                          padding: ButtonState.all(const EdgeInsets.symmetric(
                              // horizontal: (1.2 / 100) * size.width,
                              horizontal: 11,
                              // vertical: (1.3 / 100) * size.height
                              vertical: 19))),
                      child: const Text(
                        "الخزينة",
                        style: TextStyle(
                            fontFamily: "", fontSize: 12, color: Colors.black),
                      ),
                      onPressed: () {}),
                  const SizedBox(
                    // width: (0.05 / 100) * size.width,
                    width: 1.5,
                  ),
                  Button(
                      style: ButtonStyle(
                          padding: ButtonState.all(const EdgeInsets.symmetric(
                              // horizontal: (1.2 / 100) * size.width,
                              horizontal: 21,
                              // vertical: (1.3 / 100) * size.height
                              vertical: 19))),
                      child: const Text(
                        "اّجل",
                        style: TextStyle(
                            fontFamily: "", fontSize: 12, color: Colors.black),
                      ),
                      onPressed: () {}),
                  Button(
                      style: ButtonStyle(
                          padding: ButtonState.all(const EdgeInsets.symmetric(
                              // horizontal: (0.25 / 100) * size.width,
                              horizontal: 3,
                              // vertical: (0.25 / 100) * size.height
                              vertical: 4))),
                      child: const Icon(
                        FluentIcons.pinned_solid,
                        // size: (0.8 / 100) * size.width,
                        size: 14,
                      ),
                      onPressed: () {}),
                ],
              )
            ],
          ),
          const SizedBox(
            // width: (0.25 / 100) * size.width,
            width: 3,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                // height: (0.25 / 100) * size.height,
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // width: (1.25 / 100) * size.width,
                    width: 22, // height: (2.2 / 100) * size.height,
                    height: 22,
                    color: Colors.yellow.darker,
                    alignment: Alignment.center,
                    child: const Text("4",
                        style: TextStyle(
                            fontSize: 13, fontFamily: "", color: Colors.black)),
                  ),
                  const Text(
                    "  أضف",
                    style: TextStyle(
                        fontFamily: "", fontSize: 12, color: Colors.black),
                  ),
                  const SizedBox(
                    // width: (1 / 100) * size.width,
                    width: 13,
                  ),
                ],
              ),
              const SizedBox(
                // height: (0.25 / 100) * size.height,
                height: 5,
              ),
              Button(
                  style: ButtonStyle(
                      padding: ButtonState.all(const EdgeInsets.symmetric(
                          // horizontal: (1 / 100) * size.width,
                          horizontal: 18,
                          // vertical: (0.3 / 100) * size.height
                          vertical: 4))),
                  child: Icon(
                    FluentIcons.skype_check,
                    // size: (1.8 / 100) * size.width,
                    size: 32,
                    color: Colors.green.lightest,
                  ),
                  onPressed: () {}),
            ],
          ),
          const SizedBox(
            width: 3,
          ),
          Container(
            // height: (12 / 100) * size.height,
            height: 130,
            // width: (11.5 / 100) * size.width,
            width: 190,
            color: appTheme.color,
            child: Column(
              children: [
                const SizedBox(
                  // height: (0.25 / 100) * size.height,
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "       ف رقم     ",
                      style: TextStyle(
                          // fontFamily: "Hind4",
                          fontWeight: FontWeight.bold,
                          // fontSize: (0.8 / 100) * size.width,
                          fontFamily: "",
                          fontSize: 13,
                          color:
                              brightness.isDark ? Colors.white : Colors.black),
                    ),
                    Container(
                      // height: (1.8 / 100) * size.height,
                      height: 19,
                      // width: (6.8 / 100) * size.width,
                      width: 107,
                      alignment: Alignment.center,
                      color: appTheme.color.lightest,
                      child: const Text("7706",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "",
                              color: Colors.black)),
                    )
                  ],
                ),
                const SizedBox(
                  // height: (0.25 / 100) * size.height,
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      // width: (5 / 100) * size.width,
                      width: 80,
                      // height: (3 / 100) * size.height,
                      height: 26,
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: DatePicker(
                            contentPadding: const EdgeInsets.all(0),
                            selected: DateTime.now()),
                      ),
                    ),
                    //  SizedBox(
                    //   width: (0.2/100)*size.width,
                    // ),
                    SizedBox(
                        // width: (6 / 100) * size.width,
                        width: 100,
                        // height: (3 / 100) * size.height,
                        height: 26,
                        child: Directionality(
                          textDirection: TextDirection.ltr,
                          child: TimePicker(
                              contentPadding: const EdgeInsets.all(0),
                              selected: DateTime.now()),
                        )),
                  ],
                ),
                // const SizedBox(
                //   height: 5,
                // ),
                Expanded(
                  child: Container(
                    // width: size.width/15,
                    alignment: Alignment.center,
                    child: Text(
                      "0",
                      style: TextStyle(
                        // fontSize: (2 / 100) * size.width,
                        fontFamily: "",
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                        color: brightness.isDark ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          // Container(
          //     height: 130,
          //     width: 120,
          //     decoration: BoxDecoration(border: Border.all()),
          //     child: Image.asset(
          //       "assets/images/1.gif",
          //       fit: BoxFit.fill,
          //     )),
        ],
      ),
    );
  }
}
