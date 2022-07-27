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
    // Brightness brightness = FluentTheme.of(context).brightness;
    // Typography typography = FluentTheme.of(context).typography;
    return Column(
      children: [
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                     const EdgeInsets.symmetric(horizontal: 7, vertical: 12))),
            child: Column(
              children:   [
                const Icon(
                  m.Icons.shopping_basket,
                  size: 19,
                ),
                const Text(
                  "الكمية f5",
                  style: TextStyle(fontSize: 13,fontFamily: ""),
                )
              ],
            ),
            onPressed: () {}),
          const SizedBox(
          height: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 12))),
            child: Column(
              children:   [
                const Icon(
                  m.Icons.local_offer,
                  size: 19,
                ),
                const Text(
                  "السعر F6",
                  style: const TextStyle(fontSize: 13,fontFamily: ""),
                )
              ],
            ),
            onPressed: () {}),
          const SizedBox(
          height: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                     const EdgeInsets.symmetric(horizontal: 6, vertical: 12))),
            child: Column(
              children: [
                const Text("%"),
                const Text(
                  "المزيد F7",
                  style: TextStyle(fontSize: 13,fontFamily: ""),
                )
              ],
            ),
            onPressed: () {}),
          const SizedBox(
          height: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 11))),
            child: Column(
              children: [
                Container(
             width: 18,
                  height: 6,
                  color: Colors.red,
                ),
                  const SizedBox(
                  height: 12,
                ),
                  const Text(
                  "حذف F8",
                  style:  const TextStyle(fontSize: 13,fontFamily: ""),
                )
              ],
            ),
            onPressed: () {}),
          const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Button(
                style: ButtonStyle(
                    padding: ButtonState.all( const EdgeInsets.symmetric(
                        horizontal: 0, vertical: 0))),
                child: const Icon(m.Icons.keyboard_arrow_up,size: 27,),
                onPressed: () {}),
             const SizedBox(
              width: 5.5,
            ),
            Button(
                style: ButtonStyle(
                    padding: ButtonState.all( const EdgeInsets.symmetric(
                        horizontal: 0, vertical: 0))),
                child:  const Icon(m.Icons.keyboard_arrow_down,size: 27,),
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
