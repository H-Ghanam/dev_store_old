// ignore_for_file: file_names

import 'dart:math';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as m;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../theme.dart';

class GreenRow extends StatefulWidget {
  const GreenRow({Key? key}) : super(key: key);

  @override
  State<GreenRow> createState() => _GreenRowState();
}

class _GreenRowState extends State<GreenRow> {
  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppTheme>();
    Size size = MediaQuery.of(context).size;
    Typography typography = FluentTheme.of(context).typography;

    return Container(
      width: double.infinity,
      height: (7.8 / 100) * size.height,
      color: appTheme.color,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all((0.25 / 100) * size.width),
            padding: EdgeInsets.all((0.25 / 100) * size.width),
            width: (7 / 100) * size.width,
            // height: 50,
            color: appTheme.color.lightest,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "سعر البيع",
                      style: TextStyle(
                          fontSize: (0.7 / 100) * size.width,
                          // fontFamily: "Hind4",
                          color: Colors.black),
                    ),
                    Container(
                        color: Colors.white,
                        child: Icon(
                          FluentIcons.pinned_solid,
                          size: (1 / 100) * size.width,
                          color: Colors.black,
                        ))
                  ],
                ),
                DropDownButton(
                  verticalOffset: -(7.5 / 100) * size.width,
                  items: [
                    MenuFlyoutItem(
                      text: Text(
                        "سعر التجزئة",
                        style: TextStyle(
                          fontFamily: "Hind4",
                          fontSize: (0.95 / 100) * size.width,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    MenuFlyoutItem(
                      text: Text(
                        "سعر الجملة",
                        style: TextStyle(
                          fontFamily: "Hind4",
                          fontSize: (0.95 / 100) * size.width,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    MenuFlyoutItem(
                      text: Text(
                        "متوسط سعر الشراء",
                        style: TextStyle(
                          fontFamily: "Hind4",
                          fontSize: (0.95 / 100) * size.width,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "سعر التجزئة",
                        style: TextStyle(
                          fontFamily: "Hind4",
                          fontSize: (0.95 / 100) * size.width,
                        ),
                      ),
                      SizedBox(
                        width: (0.3 / 100) * size.width,
                      )
                    ],
                  ),
                  buttonStyle: ButtonStyle(
                    padding: ButtonState.all(EdgeInsets.symmetric(
                        vertical: (0.2 / 100) * size.height,
                        horizontal: (0.1 / 100) * size.width)),
                    // backgroundColor: ButtonState.all(
                    //     const Color.fromARGB(255, 252, 251, 251)
                    //     ),
                    // foregroundColor: ButtonState.all(Colors.black),
                  ),
                  // menuColor: Colors.white,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all((0.25 / 100) * size.width),
            padding: EdgeInsets.all((0.25 / 100) * size.width),
            width: (14.5 / 100) * size.width,
            // height: 50,
            color: appTheme.color.lightest,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "إضافة",
                          style: TextStyle(
                              fontSize: (0.7 / 100) * size.width,
                              // fontFamily: "Hind4",
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: (1.8 / 100) * size.height,
                        ),
                        SizedBox(
                            width: (2.5 / 100) * size.width,
                            height: (2.5 / 100) * size.height,
                            child: Form(child: TextBox()))
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: (3 / 100) * size.height,
                        ),
                        Row(
                          children: [
                            Text(
                              "%  ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: (0.9 / 100) * size.width),
                            ),
                            SizedBox(
                                width: (4 / 100) * size.width,
                                height: (2.5 / 100) * size.height,
                                child: const Form(child: TextBox())),
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "نوع الإضافة",
                          style: TextStyle(
                              fontSize: (0.7 / 100) * size.width,
                              // fontFamily: "Hind4",
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: (1.8 / 100) * size.height,
                        ),
                        SizedBox(
                            width: (6 / 100) * size.width,
                            height: (2.5 / 100) * size.height,
                            child: const Form(child: TextBox()))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all((0.25 / 100) * size.width),
            padding: EdgeInsets.all((0.25 / 100) * size.width),
            width: (13 / 100) * size.width,
            // height: 50,
            color: appTheme.color.lightest,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "خصم",
                          style: TextStyle(
                              fontSize: (0.7 / 100) * size.width,
                              // fontFamily: "Hind4",
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: (1.8 / 100) * size.height,
                        ),
                        SizedBox(
                            width: (2.5 / 100) * size.width,
                            height: (2.5 / 100) * size.height,
                            child: const Form(child: TextBox()))
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: (3 / 100) * size.height,
                        ),
                        Row(
                          children: [
                            Text("%  ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: (1 / 100) * size.width)),
                            SizedBox(
                                width: (4 / 100) * size.width,
                                height: (2.5 / 100) * size.height,
                                child: Form(child: TextBox())),
                          ],
                        )
                      ],
                    ),
                    Button(
                        style: ButtonStyle(
                            padding: ButtonState.all(EdgeInsets.symmetric(
                                vertical: (2.2 / 100) * size.height,
                                horizontal: (0.25 / 100) * size.width))),
                        child: Text(
                          "خصم الفكة",
                          style: TextStyle(
                            fontSize: (0.68 / 100) * size.width,
                            // fontFamily: "Hind4",
                          ),
                        ),
                        onPressed: () {})
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
