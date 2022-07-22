// ignore_for_file: file_names

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as m;

class ButtonsRow extends StatefulWidget {
  const ButtonsRow({Key? key}) : super(key: key);

  @override
  State<ButtonsRow> createState() => _ButtonsRowState();
}

class _ButtonsRowState extends State<ButtonsRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5))),
            child: Row(
              children: [
                Icon(
                  m.Icons.done,
                  color: Colors.blue,
                  size: 20,
                ),
                const Text(
                  "  حفظ F9",
                  style: TextStyle(
                    fontSize: 11,
                    // fontFamily: "Hind4",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
        const SizedBox(
          width: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5))),
            child: Row(
              children: [
                Icon(
                  m.Icons.add,
                  color: Colors.blue,
                  size: 20,
                ),
                const Text(
                  "  جديد F10",
                  style: TextStyle(
                    fontSize: 11,
                    // fontFamily: "Hind4",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
        const SizedBox(
          width: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5))),
            child: Row(
              children: const [
                Icon(
                  m.Icons.print,
                  // color: Colors.blue,
                  size: 20,
                ),
                Text(
                  "  طباعة F4",
                  style: TextStyle(
                    fontSize: 11,
                    // fontFamily: "Hind4",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
        const SizedBox(
          width: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 5))),
            child: Image.asset("assets/images/15.png"),
            onPressed: () {}),
        const SizedBox(
          width: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 5))),
            child: Icon(
              m.Icons.share,
              color: Colors.blue,
              size: 20,
            ),
            onPressed: () {}),
        const SizedBox(
          width: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5))),
            child: Row(
              children: [
                Icon(
                  m.Icons.close,
                  color: Colors.red,
                  size: 20,
                ),
                const Text(
                  "  حذف الفاتورة",
                  style: TextStyle(
                    fontSize: 11,
                    // fontFamily: "Hind4",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
        const SizedBox(
          width: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5))),
            child: Row(
              children: const [
                Icon(
                  m.Icons.local_offer,
                  size: 20,
                ),
                Text(
                  "  تعديل الأسعار",
                  style: TextStyle(
                    fontSize: 11,
                    // fontFamily: "Hind4",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
        const SizedBox(
          width: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5))),
            child: Row(
              children: const [
                Icon(
                  m.Icons.qr_code_scanner,
                  size: 20,
                ),
                Text(
                  "  طباعة الباركود",
                  style: TextStyle(
                    fontSize: 11,
                    // fontFamily: "Hind4",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
        const SizedBox(
          width: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 5))),
            child: const Icon(
              m.Icons.monetization_on_outlined,
              size: 20,
            ),
            onPressed: () {}),
        const Expanded(
          child: SizedBox(),
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 5))),
            child: const Icon(
              m.Icons.more_horiz,
              size: 20,
            ),
            onPressed: () {}),
        const SizedBox(
          width: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5))),
            child: Row(
              children: const [
                Icon(
                  m.Icons.settings,
                  size: 20,
                ),
                Text(
                  "  إعدادات",
                  style: TextStyle(
                    fontSize: 11,
                    // fontFamily: "Hind4",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
        const SizedBox(
          width: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5))),
            child: Row(
              children: const [
                Icon(
                  m.Icons.settings_power_outlined,
                  // color: Colors.blue,
                  size: 20,
                ),
                Text(
                  "  إغلاق",
                  style: TextStyle(
                    fontSize: 11,
                    // fontFamily: "Hind4",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
      ],
    );
  }
}
