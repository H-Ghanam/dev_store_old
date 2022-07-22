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
    //-550
    return Container(
      width: size.width - 696,
      height: 130,
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
                    width: 22,
                    height: 23,
                    color: Colors.yellow.darker,
                    alignment: Alignment.center,
                    child: const Text("1"),
                  ),
                  const Text(
                    "  إبحث عن الصنف",
                    style: TextStyle(fontFamily: "Hind4", fontSize: 16),
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  Container(
                    width: 55,
                    height: 23,
                    color: Color.fromARGB(255, 252, 251, 251),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(width: 55, height: 23, color: Colors.yellow.darker),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 65,
                    height: 23,
                    color: Colors.yellow.darker,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(m.Icons.help_outline,
                            textDirection: TextDirection.ltr),
                        Text(
                          "إستعلام",
                          style: TextStyle(fontFamily: "Hind4", fontSize: 15),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              const SizedBox(
                  width: 450, height: 45, child: Form(child: TextBox())),
              const SizedBox(
                height: 3,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "الحساب",
                    style: TextStyle(fontFamily: "Hind4", fontSize: 16),
                  ),
                  const SizedBox(
                    width: 22,
                  ),
                  const SizedBox(
                      width: 213, height: 23, child: Form(child: TextBox())),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                      width: 32.5,
                      height: 23,
                      color: const Color.fromARGB(255, 228, 228, 228)),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                      width: 65,
                      height: 23,
                      color: const Color.fromARGB(255, 228, 228, 228)),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                      width: 65,
                      height: 23,
                      color: const Color.fromARGB(255, 228, 228, 228))
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "ملاحظات",
                    style: TextStyle(fontFamily: "Hind4", fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: 390, height: 23, child: Form(child: TextBox())),
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
                    width: 22,
                    height: 23,
                    color: Colors.yellow.darker,
                    alignment: Alignment.center,
                    child: const Text("2"),
                  ),
                  const Text(
                    "  الكمية",
                    style: TextStyle(fontFamily: "Hind4", fontSize: 16),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 22,
                    height: 23,
                    color: Colors.yellow.darker,
                    alignment: Alignment.center,
                    child: const Text("3"),
                  ),
                  const Text(
                    "  سعر البيع",
                    style: TextStyle(fontFamily: "Hind4", fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: const [
                  SizedBox(
                      width: 70, height: 45, child: Form(child: TextBox())),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                      width: 100, height: 45, child: Form(child: TextBox())),
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
                          padding: ButtonState.all(const EdgeInsets.symmetric(
                              horizontal: 3, vertical: 14))),
                      child: const Text(
                        "درج النقدية",
                        style: TextStyle(fontFamily: "Hind4", fontSize: 15),
                      ),
                      onPressed: () {}),
                  const SizedBox(
                    width: 1,
                  ),
                  Button(
                      style: ButtonStyle(
                          padding: ButtonState.all(const EdgeInsets.symmetric(
                              horizontal: 22, vertical: 14))),
                      child: const Text(
                        "اّجل",
                        style: TextStyle(fontFamily: "Hind4", fontSize: 15),
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
                    width: 22,
                    height: 23,
                    color: Colors.yellow.darker,
                    alignment: Alignment.center,
                    child: const Text("4"),
                  ),
                  const Text(
                    "  أضف",
                    style: TextStyle(fontFamily: "Hind4", fontSize: 16),
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
                      padding: ButtonState.all(const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 5))),
                  child: const Icon(
                    FluentIcons.skype_check,
                    size: 30,
                  ),
                  onPressed: () {}),
            ],
          ),
          // const SizedBox(
          //   width: 300,
          // ),
          Container(
            height: 130,
            width: 190,
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
                          fontSize: 14,
                          color: brightness.isDark ? Colors.white : Colors.black
                          ),
                    ),
                    Container(
                      height: 20,
                      width: 100,
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
                      width: 91,
                      height: 31,
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
                        width: 85,
                        height: 31,
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
                    width: 190,
                    alignment: Alignment.center,
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 30,
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
