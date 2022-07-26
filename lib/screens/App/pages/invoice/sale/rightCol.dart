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
    Typography typography = FluentTheme.of(context).typography;

    return Container(
      width: (6.5 / 100) * size.width,
      height: (68.7 / 100) * size.height,
      margin: EdgeInsets.only(
        left: (0.3 / 100) * size.width,
      ),
      // color: const Color.fromARGB(255, 233, 233, 233),
      child: Column(
        children: [
          SizedBox(
            height: (0.4 / 100) * size.height,
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
            width: (6.5 / 100) * size.width,
            height: (11.5 / 100) * size.height,
            child: Column(
              children: [
                Stack(children: [
                  Center(
                      child: Image.asset(
                    "assets/images/6.png",
                    width: (5 / 100) * size.width,
                  )),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: (8.3 / 100) * size.height),
                    child: Text(
                      "Wings",
                      style: TextStyle(
                          // color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: typography.body!.fontSize!,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: "En"),
                    ),
                  )
                ]),
              ],
            ),
          ),
          SizedBox(
            height: (0.4 / 100) * size.height,
          ),
          Container(
            width: (6.5 / 100) * size.width,
            height: (4 / 100) * size.height,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: appTheme.color, blurRadius: 0.1, spreadRadius: 1)
              ],
              color: appTheme.color.light,
            ),
            child: Text(
              "بيع",
              style: TextStyle(
                  fontSize: typography.body!.fontSize, color: Colors.white),
            ),
          ),
          SizedBox(
            height: (0.4 / 100) * size.height,
          ),
          SizedBox(
              width: (6.5 / 100) * size.width,
              height: (3.5 / 100) * size.height,
              child: const ToolsRow()),
          SizedBox(
            height: (0.4 / 100) * size.height,
          ),
          Container(
            width: (6.5 / 100) * size.width,
            height: (10.5 / 100) * size.height,
            color: Colors.yellow.darker,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  FluentIcons.skype_check,
                  size: (4 / 100) * size.width,
                ),
                Text(
                  "حفظ | جديد",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: (0.8 / 100) * size.width,
                  ),
                ),
                Text(
                  "F12",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: (0.8 / 100) * size.width,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: (0.4 / 100) * size.height,
          ),
          Container(
            width: (6.5 / 100) * size.width,
            height: (10.5 / 100) * size.height,
            color: const Color.fromARGB(255, 202, 202, 202),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  m.Icons.price_change,
                  size: (3 / 100) * size.width,
                  color: Colors.black,
                ),
                Text(
                  "سداد  f11",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: (0.8 / 100) * size.width,
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
              Icon(
                m.Icons.print,
                size: (1.5 / 100) * size.width,
                color: Colors.black,
              ),
              SizedBox(
                width: (3 / 100) * size.width,
                height: (3 / 100) * size.height,
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
