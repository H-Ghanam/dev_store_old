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
    return Container(
      width: double.infinity,
      height: 70,
      color: appTheme.color,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(3),
            padding: const EdgeInsets.all(5),
            width: 120,
            // height: 50,
            color: appTheme.color.lightest,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "سعر البيع",
                      style: TextStyle(
                          fontSize: 11,
                          // fontFamily: "Hind4",
                          color: Colors.black),
                    ),
                    Container(
                        color: Colors.white,
                        child: const Icon(
                          FluentIcons.pinned_solid,
                          color: Colors.black,
                        ))
                  ],
                ),
                DropDownButton(
                  items: [
                    MenuFlyoutItem(
                      text: const Text(
                        "سعر التجزئة",
                        style: TextStyle(
                            fontFamily: "Hind4",
                            fontSize: 15,
                            ),
                      ),
                      onPressed: () {},
                    ),
                    MenuFlyoutItem(
                      text: const Text(
                        "سعر الجملة",
                        style: TextStyle(
                            fontFamily: "Hind4",
                            fontSize: 15,
                            ),
                      ),
                      onPressed: () {},
                    ),
                    MenuFlyoutItem(
                      text: const Text(
                        "متوسط سعر الشراء",
                        style: TextStyle(
                            fontFamily: "Hind4",
                            fontSize: 15,
                            ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "سعر التجزئة",
                        style: TextStyle(
                            fontFamily: "Hind4",
                            fontSize: 15,
                            ),
                      ),
                      SizedBox(
                        width: 30,
                      )
                    ],
                  ),
                  buttonStyle: ButtonStyle(
                    padding: ButtonState.all(
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 2)),
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
            margin: const EdgeInsets.all(3),
            padding: const EdgeInsets.all(5),
            width: 240,
            // height: 50,
            color: appTheme.color.lightest,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "إضافة",
                          style: TextStyle(
                              fontSize: 11,
                              // fontFamily: "Hind4",
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        SizedBox(
                            width: 40,
                            height: 25,
                            child: Form(child: TextBox()))
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 29,
                        ),
                        Row(
                          children: const [
                            Text(
                              "%  ",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                                width: 60,
                                height: 25,
                                child: Form(child: TextBox())),
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "نوع الإضافة",
                          style: TextStyle(
                              fontSize: 11,
                              // fontFamily: "Hind4",
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        SizedBox(
                            width: 100,
                            height: 25,
                            child: Form(child: TextBox()))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(3),
            padding: const EdgeInsets.all(5),
            width: 200,
            // height: 50,
            color: appTheme.color.lightest,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "إضافة",
                          style: TextStyle(
                              fontSize: 11,
                              // fontFamily: "Hind4",
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        SizedBox(
                            width: 40,
                            height: 25,
                            child: Form(child: TextBox()))
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 29,
                        ),
                        Row(
                          children: const [
                            Text("%  ", style: TextStyle(color: Colors.black)),
                            SizedBox(
                                width: 60,
                                height: 25,
                                child: Form(child: TextBox())),
                          ],
                        )
                      ],
                    ),
                    Button(
                        style: ButtonStyle(
                            padding: ButtonState.all(const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 5))),
                        child: const Text(
                          "خصم الفكة",
                          style: TextStyle(
                            fontSize: 10,
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
