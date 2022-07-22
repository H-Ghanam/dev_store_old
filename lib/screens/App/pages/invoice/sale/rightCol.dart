// ignore_for_file: file_names

import 'package:dev_store/screens/App/pages/invoice/sale/toolsRow.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as m;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../theme.dart';

class RightCol extends StatefulWidget {
  const RightCol({Key? key}) : super(key: key);

  @override
  State<RightCol> createState() => _RightColState();
}

class _RightColState extends State<RightCol> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final appTheme = context.watch<AppTheme>();
    return Container(
      width: 120,
      height: size.height - 271,
      // color: const Color.fromARGB(255, 233, 233, 233),
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: appTheme.color, blurRadius: 0.1, spreadRadius: 1)
                ],
                borderRadius: BorderRadius.circular(10),
                // color: const Color.fromARGB(255, 7, 28, 61),
                gradient: LinearGradient(
                    begin: AlignmentDirectional.bottomStart,
                    colors: [
                      appTheme.color,
                      appTheme.color.lightest,
                    ])),
            width: size.width / 15,
            height: 100,
            child: Column(
              children: [
                Stack(children: [
                  Center(child: Image.asset("assets/images/6.png", width: 80)),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 75),
                    child: Text(
                      "Wings",
                      style: TextStyle(
                          // color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: size.width / 95,
                          fontWeight: FontWeight.bold,
                          fontFamily: "En"),
                    ),
                  )
                ]),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: size.width / 15,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: appTheme.color, blurRadius: 0.1, spreadRadius: 1)
              ],
              color: appTheme.color.light,
            ),
            child: const Text(
              "بيع",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(width: size.width / 13, height: 30, child: const ToolsRow()),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: size.width / 15,
            height: 100,
            color: Colors.yellow.darker,
            alignment: Alignment.center,
            child: Column(
              children: const [
                Icon(
                  FluentIcons.skype_check,
                  size: 65,
                ),
                Text(
                  "حفظ | جديد",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                Text(
                  "F12",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: size.width / 15,
            height: 100,
            color: const Color.fromARGB(255, 202, 202, 202),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  m.Icons.price_change,
                  size: 40,
                  color: Colors.black,
                ),
                Text(
                  "سداد  f11",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Row(
            children: [
              const Icon(
                m.Icons.print,
                size: 25,
                color: Colors.black,
              ),
              SizedBox(
                width: 42,
                height: 24,
                child: ToggleSwitch(
                  checked: false,
                  onChanged: (e) {},
                  style: ToggleSwitchThemeData.standard(ThemeData(
                    borderInputColor: Colors.grey,
                  )),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
