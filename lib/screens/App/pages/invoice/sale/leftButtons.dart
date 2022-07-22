// ignore_for_file: file_names

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as m;

class LeftButtons extends StatefulWidget {
  const LeftButtons({Key? key}) : super(key: key);

  @override
  State<LeftButtons> createState() => _LeftButtonsState();
}

class _LeftButtonsState extends State<LeftButtons> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 8))),
            child: Column(
              children: const [
                Icon(
                  m.Icons.shopping_basket,
                  size: 20,
                ),
                Text(
                  "الكمية f5",
                  style: TextStyle(fontSize: 12),
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
                    const EdgeInsets.symmetric(horizontal: 3, vertical: 8))),
            child: Column(
              children: const [
                Icon(
                  m.Icons.local_offer,
                  size: 20,
                ),
                Text(
                  "السعر F6",
                  style: TextStyle(fontSize: 12),
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
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10))),
            child: Column(
              children: const [
                Text("%"),
                Text(
                  "المزيد F7",
                  style: TextStyle(fontSize: 12),
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
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10))),
            child: Column(
              children: [
                Container(
                  width: 20,
                  height: 5,
                  color: Colors.red,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "حذف F8",
                  style: TextStyle(fontSize: 12),
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
                    padding: ButtonState.all(const EdgeInsets.symmetric(
                        horizontal: 5, vertical: 5))),
                child: const Icon(m.Icons.keyboard_arrow_up,size: 18,),
                onPressed: () {}),
            const SizedBox(
              width: 2,
            ),
            Button(
                style: ButtonStyle(
                    padding: ButtonState.all(const EdgeInsets.symmetric(
                        horizontal: 5, vertical: 5))),
                child: const Icon(m.Icons.keyboard_arrow_down,size: 18,),
                onPressed: () {}),
          ],
        ),
        SizedBox(
          height: size.height - 812,
        ),
      ],
    );
  }
}
