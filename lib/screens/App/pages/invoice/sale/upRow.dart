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
      width: (55.5 / 100) * size.width,
      // width: size.width/13,
      height: (13 / 100) * size.height,
      // decoration: BoxDecoration(border: Border.all()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: (0.25 / 100) * size.width,
          ),
          Column(
            children: [
              SizedBox(
                height: (0.25 / 100) * size.height,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: (1.25 / 100) * size.width,
                    height: (2.2 / 100) * size.height,
                    color: Colors.yellow.darker,
                    alignment: Alignment.center,
                    child: Text(
                      "1",
                      style: TextStyle(fontSize: (0.9 / 100) * size.width),
                    ),
                  ),
                  Text(
                    "  إبحث عن الصنف",
                    style: TextStyle(
                        fontFamily: "Hind4", fontSize: (1 / 100) * size.width),
                  ),
                  SizedBox(
                    width: (6.8 / 100) * size.width,
                  ),
                  Container(
                    width: (4.5 / 100) * size.width,
                    height: (2.2 / 100) * size.height,
                    color: const Color.fromARGB(255, 204, 204, 204),
                  ),
                  SizedBox(
                    width: (0.2 / 100) * size.width,
                  ),
                  Container(
                      width: (4.5 / 100) * size.width,
                      height: (2.2 / 100) * size.height,
                      color: Colors.yellow.darker),
                  SizedBox(
                    width: (0.2 / 100) * size.width,
                  ),
                  Container(
                    width: (4.5 / 100) * size.width,
                    height: (2.2 / 100) * size.height,
                    color: Colors.yellow.darker,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          m.Icons.help_outline,
                          textDirection: TextDirection.ltr,
                          size: (1 / 100) * size.width,
                        ),
                        Text(
                          "إستعلام",
                          style: TextStyle(
                              fontFamily: "Hind4",
                              fontSize: (1 / 100) * size.width),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: (0.25 / 100) * size.height,
              ),
              SizedBox(
                  width: (27.8 / 100) * size.width,
                  height: (4 / 100) * size.height,
                  child: const Form(child: TextBox())),
              SizedBox(
                height: (0.25 / 100) * size.height,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "الحساب",
                    style: TextStyle(
                        fontFamily: "Hind4", fontSize: (1 / 100) * size.width),
                  ),
                  SizedBox(
                    width: (1.7 / 100) * size.width,
                  ),
                  SizedBox(
                      width: (11.8 / 100) * size.width,
                      height: (2.5 / 100) * size.height,
                      child: const Form(child: TextBox())),
                  SizedBox(
                    width: (0.2 / 100) * size.width,
                  ),
                  Container(
                      width: (2 / 100) * size.width,
                      height: (2.5 / 100) * size.height,
                      color: const Color.fromARGB(255, 228, 228, 228)),
                  SizedBox(
                    width: (0.2 / 100) * size.width,
                  ),
                  Container(
                      width: (4.6 / 100) * size.width,
                      height: (2.5 / 100) * size.height,
                      color: const Color.fromARGB(255, 228, 228, 228)),
                  SizedBox(
                    width: (0.2 / 100) * size.width,
                  ),
                  Container(
                      width: (4.6 / 100) * size.width,
                      height: (2.5 / 100) * size.height,
                      color: const Color.fromARGB(255, 228, 228, 228))
                ],
              ),
              SizedBox(
                height: (0.25 / 100) * size.height,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ملاحظات",
                    style: TextStyle(
                        fontFamily: "Hind4", fontSize: (1 / 100) * size.width),
                  ),
                  SizedBox(
                    width: (1 / 100) * size.width,
                  ),
                  SizedBox(
                      width: (23.8 / 100) * size.width,
                      height: (2.5 / 100) * size.height,
                      child: const Form(child: TextBox())),
                ],
              )
            ],
          ),
          SizedBox(
            width: (0.2 / 100) * size.width,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: (0.25 / 100) * size.height,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: (1.25 / 100) * size.width,
                    height: (2.2 / 100) * size.height,
                    color: Colors.yellow.darker,
                    alignment: Alignment.center,
                    child: Text("2",
                        style: TextStyle(fontSize: (0.9 / 100) * size.width)),
                  ),
                  Text(
                    "  الكمية       ",
                    style: TextStyle(
                        fontFamily: "Hind4", fontSize: (1 / 100) * size.width),
                  ),
                  //  SizedBox(
                  //   width: size.width/95,
                  // ),
                  Container(
                    width: (1.25 / 100) * size.width,
                    height: (2.2 / 100) * size.height,
                    color: Colors.yellow.darker,
                    alignment: Alignment.center,
                    child: Text("3",
                        style: TextStyle(fontSize: (0.9 / 100) * size.width)),
                  ),
                  Text(
                    "  سعر البيع",
                    style: TextStyle(
                        fontFamily: "Hind4", fontSize: (1 / 100) * size.width),
                  ),
                ],
              ),
              SizedBox(
                height: (0.25 / 100) * size.height,
              ),
              Row(
                children: [
                  SizedBox(
                      width: (4.5 / 100) * size.width,
                      height: (4 / 100) * size.height,
                      child: const Form(child: TextBox())),
                  SizedBox(
                    width: (0.25 / 100) * size.width,
                  ),
                  SizedBox(
                      width: (6 / 100) * size.width,
                      height: (4 / 100) * size.height,
                      child: const Form(child: TextBox())),
                ],
              ),
              SizedBox(
                height: (0.25 / 100) * size.height,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Button(
                      style: ButtonStyle(
                          padding: ButtonState.all(EdgeInsets.symmetric(
                              horizontal: (0.5 / 100) * size.width,
                              vertical: (1.3 / 100) * size.height))),
                      child: Text(
                        "درج النقدية",
                        style: TextStyle(
                            fontFamily: "Hind4",
                            fontSize: (1 / 100) * size.width),
                      ),
                      onPressed: () {}),
                  SizedBox(
                    width: (0.05 / 100) * size.width,
                  ),
                  Button(
                      style: ButtonStyle(
                          padding: ButtonState.all(EdgeInsets.symmetric(
                              horizontal: (1.2 / 100) * size.width,
                              vertical: (1.3 / 100) * size.height))),
                      child: Text(
                        "اّجل",
                        style: TextStyle(
                            fontFamily: "Hind4",
                            fontSize: (1 / 100) * size.width),
                      ),
                      onPressed: () {}),
                  SizedBox(
                    width: (0.05 / 100) * size.width,
                  ),
                  Button(
                      style: ButtonStyle(
                          padding: ButtonState.all(EdgeInsets.symmetric(
                              horizontal: (0.25 / 100) * size.width,
                              vertical: (0.25 / 100) * size.height))),
                      child: Icon(
                        FluentIcons.pinned_solid,
                        size: (0.8 / 100) * size.width,
                      ),
                      onPressed: () {}),
                ],
              )
            ],
          ),
          SizedBox(
            width: (0.25 / 100) * size.width,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: (0.25 / 100) * size.height,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: (1.25 / 100) * size.width,
                    height: (2.2 / 100) * size.height,
                    color: Colors.yellow.darker,
                    alignment: Alignment.center,
                    child: Text("4",
                        style: TextStyle(fontSize: (0.9 / 100) * size.width)),
                  ),
                  Text(
                    "  أضف",
                    style: TextStyle(
                        fontFamily: "Hind4", fontSize: (1 / 100) * size.width),
                  ),
                  SizedBox(
                    width: (1 / 100) * size.width,
                  ),
                ],
              ),
              SizedBox(
                height: (0.25 / 100) * size.height,
              ),
              Button(
                  style: ButtonStyle(
                      padding: ButtonState.all(EdgeInsets.symmetric(
                          horizontal: (1 / 100) * size.width,
                          vertical: (0.3 / 100) * size.height))),
                  child: Icon(
                    FluentIcons.skype_check,
                    size: (1.8 / 100) * size.width,
                  ),
                  onPressed: () {}),
            ],
          ),
          // const SizedBox(
          //   width: 300,
          // ),
          Container(
            height: (12 / 100) * size.height,
            width: (11.5 / 100) * size.width,
            color: appTheme.color,
            child: Column(
              children: [
                SizedBox(
                  height: (0.25 / 100) * size.height,
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
                          fontSize: (0.8 / 100) * size.width,
                          color:
                              brightness.isDark ? Colors.white : Colors.black),
                    ),
                    Container(
                      height: (1.8 / 100) * size.height,
                      width: (6.8 / 100) * size.width,
                      alignment: Alignment.center,
                      color: appTheme.color.lightest,
                      child: Text("7706",
                          style: TextStyle(fontSize: (0.9 / 100) * size.width)),
                    )
                  ],
                ),
                SizedBox(
                  height: (0.25 / 100) * size.height,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: (5 / 100) * size.width,
                      height: (3 / 100) * size.height,
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
                        width: (6 / 100) * size.width,
                        height: (3 / 100) * size.height,
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
                        fontSize: (2 / 100) * size.width,
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
