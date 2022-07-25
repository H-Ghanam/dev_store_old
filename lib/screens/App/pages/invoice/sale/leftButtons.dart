// ignore_for_file: file_names

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as m;

class LeftButtons extends StatefulWidget {
   LeftButtons({Key? key}) : super(key: key);

  @override
  State<LeftButtons> createState() => _LeftButtonsState();
}

class _LeftButtonsState extends State<LeftButtons> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Brightness brightness = FluentTheme.of(context).brightness;
    Typography typography = FluentTheme.of(context).typography;
    return Column(
      children: [
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                     EdgeInsets.symmetric(horizontal: (0.25/100)*size.width, vertical: (0.7/100)*size.height))),
            child: Column(
              children:   [
                Icon(
                  m.Icons.shopping_basket,
                  size: (1.1/100)*size.width,
                ),
                Text(
                  "الكمية f5",
                  style: TextStyle(fontSize: (0.7/100)*size.width),
                )
              ],
            ),
            onPressed: () {}),
          SizedBox(
          height: (0.25/100)*size.height,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                      EdgeInsets.symmetric(horizontal: (0.05/100)*size.width, vertical: (0.7/100)*size.height))),
            child: Column(
              children:   [
                Icon(
                  m.Icons.local_offer,
                  size: (1.1/100)*size.width,
                ),
                Text(
                  "السعر F6",
                  style: TextStyle(fontSize: (0.7/100)*size.width),
                )
              ],
            ),
            onPressed: () {}),
          SizedBox(
          height: (0.25/100)*size.height,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                     EdgeInsets.symmetric(horizontal: (0.25/100)*size.width, vertical: (0.5/100)*size.width))),
            child: Column(
              children: [
                Text("%"),
                Text(
                  "المزيد F7",
                  style: TextStyle(fontSize: (0.7/100)*size.width),
                )
              ],
            ),
            onPressed: () {}),
          SizedBox(
          height: (0.25/100)*size.height,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                      EdgeInsets.symmetric(horizontal: (0.4/100)*size.width, vertical: (0.5/100)*size.width))),
            child: Column(
              children: [
                Container(
             width: (0.8/100)*size.width,
                  height: (0.25/100)*size.height,
                  color: Colors.red,
                ),
                  SizedBox(
                  height: (0.7/100)*size.width,
                ),
                  Text(
                  "حذف F8",
                  style:  TextStyle(fontSize: (0.7 /100)*size.width),
                )
              ],
            ),
            onPressed: () {}),
          SizedBox(
          height: (0.25/100)*size.height,
        ),
        Row(
          children: [
            Button(
                style: ButtonStyle(
                    padding: ButtonState.all( EdgeInsets.symmetric(
                        horizontal: (0.15/100)*size.width, vertical: (0.7/100)*size.height))),
                child: Icon(m.Icons.keyboard_arrow_up,size: (1.1/100)*size.width,),
                onPressed: () {}),
             SizedBox(
              width: (0.05/100)*size.width,
            ),
            Button(
                style: ButtonStyle(
                    padding: ButtonState.all( EdgeInsets.symmetric(
                        horizontal: (0.15/100)*size.width, vertical: (0.7/100)*size.height))),
                child:  Icon(m.Icons.keyboard_arrow_down,size: (1.1/100)*size.width,),
                onPressed: () {}),
          ],
        ),
        SizedBox(
          height: (15/100)*size.height,
        ),
      ],
    );
  }
}
