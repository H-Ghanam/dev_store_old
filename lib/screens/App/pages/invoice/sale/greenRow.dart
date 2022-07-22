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
            Typography typography= FluentTheme.of(context).typography;


    return Container(
      width: double.infinity,
      height: size.height/12.8,
      color: appTheme.color,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(3),
            padding: const EdgeInsets.all(5),
            width: size.width/13.3,
            // height: 50,
            color: appTheme.color.lightest,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text(
                      "سعر البيع",
                      style: TextStyle(
                          fontSize:  typography.caption!.fontSize!,
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
                      text:  Text(
                        "سعر التجزئة",
                        style: TextStyle(
                            fontFamily: "Hind4",
                            fontSize: typography.body!.fontSize!+1,
                            ),
                      ),
                      onPressed: () {},
                    ),
                    MenuFlyoutItem(
                      text: Text(
                        "سعر الجملة",
                        style: TextStyle(
                            fontFamily: "Hind4",
                            fontSize:typography.body!.fontSize!+1,
                            ),
                      ),
                      onPressed: () {},
                    ),
                    MenuFlyoutItem(
                      text: Text(
                        "متوسط سعر الشراء",
                        style: TextStyle(
                            fontFamily: "Hind4",
                            fontSize:typography.body!.fontSize!+1,
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
                            fontSize:typography.body!.fontSize!+1,
                            ),
                      ),
                      SizedBox(
                        width: size.width/60,
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
            width: size.width/6.8,
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
                      children:  [
                        Text(
                          "إضافة",
                          style: TextStyle(
                              fontSize: typography.caption!.fontSize!,
                              // fontFamily: "Hind4",
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: size.height/55,
                        ),
                        SizedBox(
                            width: size.width/40,
                            height: size.height/40,
                            child: Form(child: TextBox()))
                      ],
                    ),
                    Column(
                      children: [
                         SizedBox(
                          height: size.height/33,
                        ),
                        Row(
                          children:  [
                            Text(
                              "%  ",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                                width: size.width/30,
                                height: size.height/40,
                                child: Form(child: TextBox())),
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
                              fontSize:typography.caption!.fontSize!,
                              // fontFamily: "Hind4",
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: size.height/65,
                        ),
                        SizedBox(
                            width: size.width/15,
                            height: size.height/40,
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
            width: size.width/8,
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
                      children:  [
                        Text(
                          "إضافة",
                          style: TextStyle(
                              fontSize: typography.caption!.fontSize!,
                              // fontFamily: "Hind4",
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: size.height/60,
                        ),
                        SizedBox(
                            width: size.width/35,
                            height: size.height/35,
                            child: Form(child: TextBox()))
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: size.height/35,
                        ),
                        Row(
                          children: [
                            Text("%  ", style: TextStyle(color: Colors.black)),
                            SizedBox(
                                width: size.width/30,
                                height: size.height/35,
                                child: Form(child: TextBox())),
                          ],
                        )
                      ],
                    ),
                    Button(
                        style: ButtonStyle(
                            padding: ButtonState.all( EdgeInsets.symmetric(
                                vertical: size.height/45, horizontal: 5))),
                        child:  Text(
                          "خصم الفكة",
                          style: TextStyle(
                            fontSize: typography.caption!.fontSize!-1,
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
