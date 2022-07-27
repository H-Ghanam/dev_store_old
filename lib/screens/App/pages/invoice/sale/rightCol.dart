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
      width: 135,
      // width: (8.5 / 100) * size.width,
      height: (68.7 / 100) * size.height,
      margin: EdgeInsets.only(
        left: (0.3 / 100) * size.width,
      ),
      padding: const EdgeInsets.symmetric(vertical: 7),
      color:  Colors.grey.withOpacity(0.06),
      child: Column(
        children: [
          SizedBox(
            height: (0.0 / 100) * size.height,
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
                    width: 122,
            // width: (7.5/ 100) * size.width,
            height: 115,
            // height: (13 / 100) * size.height,
            child: Column(
              children: [
                Stack(children: [
                  Center(
                      child: Image.asset(
                    "assets/images/6.png",
                    width: 80,
                    // width: (5 / 100) * size.width,
                  )),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 78),
                    // margin: EdgeInsets.only(top: (8.9 / 100) * size.height),
                    child:const Text(
                      "Wings",
                      style: TextStyle(
                          // color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 26,
                          // fontSize: (1.6 / 100) * size.width,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: "En"),
                    ),
                  )
                ]),
              ],
            ),
          ),
          const SizedBox(
            // height: (0.8 / 100) * size.height,
            height: 8,
          ),
          Container(
            // width: (7.5/ 100) * size.width,
            width: 122,
            // height: (6.4 / 100) * size.height,
            height: 55,
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
              style: TextStyle(fontFamily: "",
                  // fontSize: (1.2 / 100) * size.width,
                  fontSize: 19,
                  
                   color: Colors.white),
            ),
          ),
          const SizedBox(
            // height: (0.8 / 100) * size.height,
            height: 8,
          ),
          const SizedBox(
            width: 122,
              // width: (7.5/ 100) * size.width,
              // height: (3.6 / 100) * size.height,
              height: 31,
              child: ToolsRow()),
          const SizedBox(
            // height: (0.8 / 100) * size.height,
            height: 8,
          ),
          Container(
            // width: (7.5/ 100) * size.width,
            width: 122,
            // height: (12.3 / 100) * size.height,
            height: 112,
            color: Colors.yellow.darker.withOpacity(0.9),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FluentIcons.skype_check,
                  // size: (4.5 / 100) * size.width,
                  size: 75,
                  color: Colors.blue.light,
                ),
                const Text(
                  "حفظ | جديد",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "",
                    // fontSize: (0.75 / 100) * size.width,
                    fontSize: 12.5
                  ),
                ),
                const Text(
                  "F12",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "",
                    // fontSize: (0.75 / 100) * size.width,
                    fontSize: 12.5
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            // height: (0.8 / 100) * size.height,
            height: 8,
          ),
          Container(
            // width: (7.5/ 100) * size.width,
            width: 122,
            // height: (12.3 / 100) * size.height,
            height: 112,
            color:  Colors.grey.withOpacity(0.07),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                Icon(
                  m.Icons.price_change,
                  // size: (3 / 100) * size.width,
                  size: 40,
                  color: Colors.black,
                ),
                 Text(
                  "سداد  f11",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "",
                    // fontSize: (0.75 / 100) * size.width,
                    fontSize: 12.5
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
                // size: (1.5 / 100) * size.width,
                size: 22,
                color: Colors.black,
              ),
              SizedBox(
                // width: (3 / 100) * size.width,
                width: 40,
                // height: (3 / 100) * size.height,
                height: 25,
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
