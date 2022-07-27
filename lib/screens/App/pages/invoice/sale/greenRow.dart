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
      height: 68,
      color: appTheme.color,
      padding: EdgeInsets.all(5),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 4),
            padding: const EdgeInsets.all(5),
            width: 108,
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
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          fontFamily: "",
                          color: Colors.black),
                    ),
                    Container(
                        color: Colors.white,
                        child: const Icon(
                          FluentIcons.pinned_solid,
                          size: 18,
                          color: Colors.black,
                        ))
                  ],
                ),
                DropDownButton(
                  verticalOffset: -115,
                  items: [
                    MenuFlyoutItem(
                      text: const Text(
                        "سعر التجزئة",
                        style:  TextStyle(
                          fontFamily: "",
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    MenuFlyoutItem(
                      text: const Text(
                        "سعر الجملة",
                        style: TextStyle(
                          fontFamily: "",
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    MenuFlyoutItem(
                      text: const Text(
                        "متوسط سعر الشراء",
                        style: TextStyle(
                          fontFamily: "",
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
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
                          fontFamily: "",
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                  buttonStyle: ButtonStyle(
                    padding: ButtonState.all(const EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 2)),
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
            margin: const EdgeInsets.only(left: 4),
            padding: const EdgeInsets.all(5),
            width: 260,
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
                      children: const [
                        Text(
                          "إضافة",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontFamily: "",
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                            width: 40,
                            height: 23,
                            child: Form(child: TextBox()))
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: const [
                            Text(
                              "%  ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12),
                            ),
                            SizedBox(
                                width: 76,
                                height: 23,
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
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontFamily: "",
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                            width: 110,
                            height: 23,
                            child: Form(child: TextBox()))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            // margin: const EdgeInsets.only(left: 4),
            padding: const EdgeInsets.all(4),
            width: 210,
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
                      children: const [
                        Text(
                          "خصم",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontFamily: "",
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                            width: 40,
                            height: 23,
                            child: Form(child: TextBox()))
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: const [
                            Text("%  ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12)),
                            SizedBox(
                                width: 80,
                                height: 23,
                                child: Form(child: TextBox())),
                          ],
                        )
                      ],
                    ),
                    Button(
                        style: ButtonStyle(
                            padding: ButtonState.all(const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 0))),
                        child: const Text(
                          "خصم الفكة",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            fontFamily: "",
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
