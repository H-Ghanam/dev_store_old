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
      width: size.width/1.5,
      // width: size.width/13,
      height: size.height/7.5,
      // decoration: BoxDecoration(border: Border.all()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 5,
          ),
          Column(
            children: [
              const SizedBox(
                height: 3,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width / 80,
                    height: size.height / 40,
                    color: Colors.yellow.darker,
                    alignment: Alignment.center,
                    child: const Text("1"),
                  ),
                  Text(
                    "  إبحث عن الصنف",
                    style: TextStyle(
                        fontFamily: "Hind4",
                        fontSize: typography.bodyStrong!.fontSize! + 2),
                  ),
                  SizedBox(
                    width: size.width / 11,
                  ),
                  Container(
                    width: size.width / 26,
                    height: size.height / 39,
                    color: Color.fromARGB(255, 204, 204, 204),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                      width: size.width / 26,
                      height: size.height / 39,
                      color: Colors.yellow.darker),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: size.width / 26,
                    height: size.height / 39,
                    color: Colors.yellow.darker,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(m.Icons.help_outline,
                            textDirection: TextDirection.ltr),
                        Text(
                          "إستعلام",
                          style: TextStyle(
                              fontFamily: "Hind4",
                              fontSize: typography.bodyStrong!.fontSize! + 2),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              SizedBox(
                  width: size.width / 3.6,
                  height: size.height / 24,
                  child: Form(child: TextBox())),
              const SizedBox(
                height: 3,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "الحساب",
                    style: TextStyle(
                        fontFamily: "Hind4",
                        fontSize: typography.bodyStrong!.fontSize! + 2),
                  ),
                  SizedBox(
                    width: size.width / 75,
                  ),
                  SizedBox(
                      width: size.width / 8,
                      height: size.height / 39,
                      child: Form(child: TextBox())),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                      width: size.width / 35,
                      height: size.height / 39,
                      color: const Color.fromARGB(255, 228, 228, 228)),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                      width: size.width / 26,
                      height: size.height / 39,
                      color: const Color.fromARGB(255, 228, 228, 228)),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                      width: size.width / 26,
                      height: size.height / 39,
                      color: const Color.fromARGB(255, 228, 228, 228))
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ملاحظات",
                    style: TextStyle(
                        fontFamily: "Hind4",
                        fontSize: typography.bodyStrong!.fontSize! + 2),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: size.width / 4.2,
                      height: size.height / 39,
                      child: Form(child: TextBox())),
                ],
              )
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 3,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width / 80,
                    height: size.height / 39,
                    color: Colors.yellow.darker,
                    alignment: Alignment.center,
                    child: const Text("2"),
                  ),
                  Text(
                    "  الكمية       ",
                    style: TextStyle(
                        fontFamily: "Hind4",
                        fontSize: typography.bodyStrong!.fontSize! + 2),
                  ),
                  //  SizedBox(
                  //   width: size.width/95,
                  // ),
                  Container(
                    width:size.width / 80,
                    height: size.height / 39,
                    color: Colors.yellow.darker,
                    alignment: Alignment.center,
                    child: const Text("3"),
                  ),
                  Text(
                    "  سعر البيع",
                    style: TextStyle(
                        fontFamily: "Hind4",
                        fontSize: typography.bodyStrong!.fontSize! + 2),
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children:  [
                  SizedBox(
                      width: size.width/25, height: size.height / 24, child: Form(child: TextBox())),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                      width: size.width/18, height: size.height / 24, child: Form(child: TextBox())),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Button(
                      style: ButtonStyle(
                          padding: ButtonState.all( EdgeInsets.symmetric(
                              horizontal: 3, vertical: size.height/65))),
                      child:  Text(
                        "درج النقدية",
                        style: TextStyle(fontFamily: "Hind4", fontSize: typography.bodyStrong!.fontSize!+1),
                      ),
                      onPressed: () {}),
                  const SizedBox(
                    width: 1,
                  ),
                  Button(
                      style: ButtonStyle(
                          padding: ButtonState.all(EdgeInsets.symmetric(
                              horizontal: 22, vertical: size.height/65))),
                      child: Text(
                        "اّجل",
                        style: TextStyle(fontFamily: "Hind4", fontSize: typography.bodyStrong!.fontSize!+1),
                      ),
                      onPressed: () {}),
                  const SizedBox(
                    width: 1,
                  ),
                  Button(
                      style: ButtonStyle(
                          padding: ButtonState.all(const EdgeInsets.symmetric(
                              horizontal: 2, vertical: 2))),
                      child: const Icon(
                        FluentIcons.pinned_solid,
                      ),
                      onPressed: () {}),
                ],
              )
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 3,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                     width:size.width / 80,
                    height: size.height / 39,
                    color: Colors.yellow.darker,
                    alignment: Alignment.center,
                    child: const Text("4"),
                  ),
                  Text(
                    "  أضف",
                    style: TextStyle(
                        fontFamily: "Hind4",
                        fontSize: typography.bodyStrong!.fontSize! + 2),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Button(
                  style: ButtonStyle(
                      padding: ButtonState.all( EdgeInsets.symmetric(
                          horizontal: size.width/100, vertical: size.height/200))),
                  child: Icon(
                    FluentIcons.skype_check,
                    size: typography.title!.fontSize!,
                  ),
                  onPressed: () {}),
            ],
          ),
          // const SizedBox(
          //   width: 300,
          // ),
          Container(
            height: size.height/7,
            width: size.width/8,
            color: appTheme.color,
            child: Column(
              children: [
                const SizedBox(
                  height: 2,
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
                          fontSize: typography.bodyStrong!.fontSize!,
                          color:
                              brightness.isDark ? Colors.white : Colors.black),
                    ),
                    Container(
                      height: size.height/50,
                      width: size.width/15,
                      alignment: Alignment.center,
                      color: appTheme.color.lightest,
                      child: const Text("7706"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: size.width/17,
                      height: size.height/30,
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: DatePicker(
                            contentPadding: const EdgeInsets.all(0),
                            selected: DateTime.now()),
                      ),
                    ),
                    // const SizedBox(
                    //   width: 5,
                    // ),
                    SizedBox(
                        width: size.width/18,
                        height: size.height/30,
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
                        fontSize: typography.title!.fontSize!+2,
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
