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
        SizedBox(width: (0.25/100)*size.width,),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(EdgeInsets.symmetric(
                    horizontal: (1/100)*size.width, vertical: (0.7/100)*size.height))),
            child: Row(
              children: [
                Icon(
             m.Icons.done,
                  color: Colors.blue,
                  size: (1.3/100)*size.width,
                ),
                Text(
                  "  حفظ F9",
                  style: TextStyle(
                    fontSize: (0.75/100)*size.width,
                    // fontFamily: "Hind4",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
        SizedBox(
          width: (0.25/100)*size.width,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(EdgeInsets.symmetric(
                    horizontal: (1/100)*size.width, vertical: (0.7/100)*size.height))),
            child: Row(
              children: [
                Icon(
             m.Icons.add,
                  color: Colors.blue,
                  size: (1.3/100)*size.width,
                ),
                 Text(
                  "  جديد F10",
                  style: TextStyle(
                    fontSize: (0.75/100)*size.width,
                    // fontFamily: "Hind4",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
        SizedBox(
          width: (0.25/100)*size.width,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(EdgeInsets.symmetric(
                    horizontal: (1/100)*size.width, vertical: (0.7/100)*size.height))),
            child: Row(
              children:[
                Icon(
             m.Icons.print,
                  // color: Colors.blue,
                  size: (1.3/100)*size.width,
                ),
                Text(
                  "  طباعة F4",
                  style: TextStyle(
                    fontSize: (0.75/100)*size.width,
                    // fontFamily: "Hind4",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
        SizedBox(
          width: (0.25/100)*size.width,
        ),
        Button(
          
            child: Image.asset("assets/images/15.png",width: (1.3/100)*size.width,),
            onPressed: () {}),
        SizedBox(
          width: (0.25/100)*size.width,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                     EdgeInsets.symmetric(horizontal: (0.5/100)*size.width, vertical: (0.65/100)*size.height))),
            child: Icon(
              m.Icons.share,
              color: Colors.blue,
              size: (1.3/100)*size.width,
            ),
            onPressed: () {}),
        SizedBox(
          width: (0.25/100)*size.width,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(EdgeInsets.symmetric(
                    horizontal: (1/100)*size.width, vertical: (0.7/100)*size.height))),
            child: Row(
              children: [
                Icon(
                  m.Icons.close,
                  color: Colors.red,
                  size: (1.3/100)*size.width,
                ),
                 Text(
                  "  حذف الفاتورة",
                  style: TextStyle(
                    fontSize: (0.75/100)*size.width,
                    // fontFamily: "Hind4",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
        SizedBox(
          width: (0.25/100)*size.width,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(EdgeInsets.symmetric(
                    horizontal: (1/100)*size.width, vertical: (0.7/100)*size.height))),
            child: Row(
              children:  [
                Icon(
                  m.Icons.local_offer,
                  size: (1.3/100)*size.width,
                ),
                Text(
                  "  تعديل الأسعار",
                  style: TextStyle(
                    fontSize: (0.75/100)*size.width,
                    // fontFamily: "Hind4",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
        SizedBox(
          width: (0.25/100)*size.width,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(EdgeInsets.symmetric(
                    horizontal: (1/100)*size.width, vertical: (0.7/100)*size.height))),
            child: Row(
              children:  [
                Icon(
                  m.Icons.qr_code_scanner,
                  size: (1.3/100)*size.width,
                ),
                Text(
                  "  طباعة الباركود",
                  style: TextStyle(
                    fontSize: (0.75/100)*size.width,
                    // fontFamily: "Hind4",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
        SizedBox(
          width: (0.25/100)*size.width,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                     EdgeInsets.symmetric(horizontal: size.width/150, vertical: (0.65/100)*size.height))),
            child:  Icon(
              m.Icons.monetization_on_outlined,
              size: (1.3/100)*size.width,
            ),
            onPressed: () {}),
        const Expanded(
          child: SizedBox(),
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(
                     EdgeInsets.symmetric(horizontal: (0.5/100)*size.width, vertical: (0.65/100)*size.height))),
            child:  Icon(
              m.Icons.more_horiz,
              size: (1.3/100)*size.width,
            ),
            onPressed: () {}),
        SizedBox(
          width: (0.25/100)*size.width,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(EdgeInsets.symmetric(
                    horizontal: (1/100)*size.width, vertical: (0.7/100)*size.height))),
            child: Row(
              children:  [
                Icon(
                  m.Icons.settings,
                  size: (1.3/100)*size.width,
                ),
                Text(
                  "  إعدادات",
                  style: TextStyle(
                    fontSize: (0.75/100)*size.width,
                    // fontFamily: "Hind4",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
        SizedBox(
          width: (0.25/100)*size.width,
        ),
        Button(
            style: ButtonStyle(
                padding: ButtonState.all(EdgeInsets.symmetric(
                    horizontal: (1/100)*size.width, vertical: (0.7/100)*size.height))),
            child: Row(
              children:  [
                Icon(
             m.Icons.settings_power_outlined,
                  // color: Colors.blue,
                  size: (1.3/100)*size.width,
                ),
                Text(
                  "  إغلاق",
                  style: TextStyle(
                    fontSize: (0.75/100)*size.width,
                    // fontFamily: "Hind4",
                  ),
                ),
              ],
            ),
            onPressed: () {}),
            SizedBox(width: (0.25/100)*size.width,),
      ],
    );
  }
}
