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
    Size size = MediaQuery.of(context).size;
        Typography typography= FluentTheme.of(context).typography;


    return Row(
      children: [
        const SizedBox(width: 5,),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 6))),
            child: Row(
              children: [
                Icon(
             m.Icons.done,
                  color: Colors.blue,
                  size: 22,
                ),
                const Text(
                  "  حفظ F9",
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "",
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
                padding: ButtonState.all(const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 6))),
            child: Row(
              children: [
                Icon(
             m.Icons.add,
                  color: Colors.blue,
                  size: 22,
                ),
                 const Text(
                  "  جديد F10",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "",
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
                padding: ButtonState.all(const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 6))),
            child: Row(
              children:const [
                Icon(
             m.Icons.print,
                  // color: Colors.blue,
                  size: 22,
                ),
                Text(
                  "  طباعة F4",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
        const SizedBox(
          width: 5,
        ),
        Button(
          
            child: Image.asset("assets/images/15.png",width: 24,),
            onPressed: () {}),
        const SizedBox(
          width: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                     const EdgeInsets.symmetric(horizontal: 13, vertical: 6.25))),
            child: Icon(
              m.Icons.share,
              color: Colors.blue,
              size: 22,
            ),
            onPressed: () {}),
        const SizedBox(
          width: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 6))),
            child: Row(
              children: [
                Icon(
                  m.Icons.close,
                  color: Colors.red,
                  size: 22,
                ),
                 const Text(
                  "  حذف الفاتورة",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "",
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
                padding: ButtonState.all(const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 6))),
            child: Row(
              children:  const [
                Icon(
                  m.Icons.local_offer,
                  size: 22,
                ),
                Text(
                  "  تعديل الأسعار",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "",
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
                padding: ButtonState.all(const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 6))),
            child: Row(
              children:  const [
                Icon(
                  m.Icons.qr_code_scanner,
                  size: 22,
                ),
                Text(
                  "  طباعة الباركود",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "",
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
                     const EdgeInsets.symmetric(horizontal: 12, vertical: 6.25))),
            child:  const Icon(
              m.Icons.monetization_on_outlined,
              size: 22,
            ),
            onPressed: () {}),
        const Expanded(
          child: SizedBox(),
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                     const EdgeInsets.symmetric(horizontal: 13, vertical: 6.25))),
            child:  const Icon(
              m.Icons.more_horiz,
              size: 22,
            ),
            onPressed: () {}),
        const SizedBox(
          width: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 6))),
            child: Row(
              children:  const [
                Icon(
                  m.Icons.settings,
                  size: 22,
                ),
                Text(
                  "  إعدادات",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "",
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
                padding: ButtonState.all(const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 6))),
            child: Row(
              children:  const [
                Icon(
             m.Icons.settings_power_outlined,
                  // color: Colors.blue,
                  size: 22,
                ),
                Text(
                  "  إغلاق",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
            const SizedBox(width: 5,),
      ],
    );
  }
}
