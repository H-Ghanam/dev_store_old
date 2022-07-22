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
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(EdgeInsets.symmetric(
                    horizontal: size.width / 70, vertical: size.height / 200))),
            child: Row(
              children: [
                Icon(
             m.Icons.done,
                  color: Colors.blue,
                  size: typography.caption!.fontSize!+0.5,
                ),
                Text(
                  "  حفظ F9",
                  style: TextStyle(
                    fontSize: typography.caption!.fontSize!+0.5,
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
                padding: ButtonState.all(EdgeInsets.symmetric(
                    horizontal: size.width / 70, vertical: size.height / 200))),
            child: Row(
              children: [
                Icon(
             m.Icons.add,
                  color: Colors.blue,
                  size: typography.caption!.fontSize!+0.5,
                ),
                 Text(
                  "  جديد F10",
                  style: TextStyle(
                    fontSize: typography.caption!.fontSize!+0.5,
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
                padding: ButtonState.all(EdgeInsets.symmetric(
                    horizontal: size.width / 70, vertical: size.height / 200))),
            child: Row(
              children:[
                Icon(
             m.Icons.print,
                  // color: Colors.blue,
                  size: typography.caption!.fontSize!+0.5,
                ),
                Text(
                  "  طباعة F4",
                  style: TextStyle(
                    fontSize: typography.caption!.fontSize!+0.5,
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
                     EdgeInsets.symmetric(horizontal: size.width / 2000))),
            child: Image.asset("assets/images/15.png",cacheWidth: 30 ,),
            onPressed: () {}),
        const SizedBox(
          width: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                     EdgeInsets.symmetric(horizontal: size.width/300, vertical: size.height/200))),
            child: Icon(
              m.Icons.share,
              color: Colors.blue,
              size: typography.caption!.fontSize!+0.5,
            ),
            onPressed: () {}),
        const SizedBox(
          width: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(EdgeInsets.symmetric(
                    horizontal: size.width / 70, vertical: size.height / 200))),
            child: Row(
              children: [
                Icon(
                  m.Icons.close,
                  color: Colors.red,
                  size: typography.caption!.fontSize!+0.5,
                ),
                 Text(
                  "  حذف الفاتورة",
                  style: TextStyle(
                    fontSize: typography.caption!.fontSize!+0.5,
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
                padding: ButtonState.all(EdgeInsets.symmetric(
                    horizontal: size.width / 70, vertical: size.height / 200))),
            child: Row(
              children:  [
                Icon(
                  m.Icons.local_offer,
                  size: typography.caption!.fontSize!+0.5,
                ),
                Text(
                  "  تعديل الأسعار",
                  style: TextStyle(
                    fontSize: typography.caption!.fontSize!+0.5,
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
                padding: ButtonState.all(EdgeInsets.symmetric(
                    horizontal: size.width / 70, vertical: size.height / 200))),
            child: Row(
              children:  [
                Icon(
                  m.Icons.qr_code_scanner,
                  size: typography.caption!.fontSize!+0.5,
                ),
                Text(
                  "  طباعة الباركود",
                  style: TextStyle(
                    fontSize: typography.caption!.fontSize!+0.5,
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
                     EdgeInsets.symmetric(horizontal: size.width/300, vertical: size.height/200))),
            child:  Icon(
              m.Icons.monetization_on_outlined,
              size: typography.caption!.fontSize!+0.5,
            ),
            onPressed: () {}),
        const Expanded(
          child: SizedBox(),
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                     EdgeInsets.symmetric(horizontal: size.width/300, vertical: size.height/200))),
            child:  Icon(
              m.Icons.more_horiz,
              size: typography.caption!.fontSize!+0.5,
            ),
            onPressed: () {}),
        const SizedBox(
          width: 5,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(EdgeInsets.symmetric(
                    horizontal: size.width / 70, vertical: size.height / 200))),
            child: Row(
              children:  [
                Icon(
                  m.Icons.settings,
                  size: typography.caption!.fontSize!+0.5,
                ),
                Text(
                  "  إعدادات",
                  style: TextStyle(
                    fontSize: typography.caption!.fontSize!+0.5,
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
                padding: ButtonState.all(EdgeInsets.symmetric(
                    horizontal: size.width / 70, vertical: size.height / 200))),
            child: Row(
              children:  [
                Icon(
             m.Icons.settings_power_outlined,
                  // color: Colors.blue,
                  size: typography.caption!.fontSize!+0.5,
                ),
                Text(
                  "  إغلاق",
                  style: TextStyle(
                    fontSize: typography.caption!.fontSize!+0.5,
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
