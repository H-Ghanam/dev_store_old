// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:io';

// import 'package:breaking1/presntation/widgets/tabs.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:dev_store/Bloc/App/app_bloc.dart';
import 'package:dev_store/Models/app_models/start_app_model.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

// import '../../businiss_logic/cubit/characters_cubit.dart';
// import '../../data/models/characters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/drop.dart';
import '../widgets/tabs.dart';
import 'login.dart';
import 'package:fluent_ui/fluent_ui.dart' as p;

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  Future testWindowFunctions() async {
    await DesktopWindow.resetMaxWindowSize();
    WindowOptions windowOptions = const WindowOptions(fullScreen: true);
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }

  @override
  void initState() {
    super.initState();
    // allCharacters =
    //     BlocProvider.of<CharactersCubit>(context).getAllCharacters();

    // appData = context.read<AppBloc>().state.startAppModel?.startApp
    // BlocProvider.of<AppBloc>(context).add(OnAppStartEvent());

    testWindowFunctions();
  }

  // late StartApp appData;
  int index = 1;

  int _enterCounter = 0;
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;
  double _x = 0.0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      x = details.position.dx;
      // y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    // DesktopWindow.setFullScreen(true);
    Size _size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Stack(children: [
          SizedBox(
              width: double.infinity,
              child: Image.asset(
                "assets/images/2.png",
                fit: BoxFit.fill,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 39,
                color: Colors.blue.shade100,
                padding: EdgeInsets.only(right: 5),
                child: Row(
                  children: [
                    // IconButton(icon: Icon(Icons.exit_to_app), onPressed: (){exit(1);}),
                    // SizedBox(width: 5,),
                    DropdownButton(
                      value: "Wings",
                      items: dropdownItems,
                      onChanged: (Object? value) {},
                      icon: Text(""),
                    ),
                    // Text(
                    //   "Wings",
                    //   style: TextStyle(
                    //       color: Colors.black, fontSize: 15, fontFamily: "En"),
                    // ),
                    SizedBox(width: 10),
                    DropdownButton(
                      value: "الحسابات",
                      items: dropdownItems,
                      onChanged: (Object? value) {},
                      icon: Text(""),
                    ),
                    // Text(
                    //   "الحسابات",
                    //   style: TextStyle(
                    //       color: Colors.black,
                    //       fontSize: 15,
                    //       fontFamily: "Hind4"),
                    // ),
                    SizedBox(width: 10),
                    DropdownButton(
                      value: "الخزينة",
                      items: dropdownItems,
                      onChanged: (Object? value) {},
                      icon: Text(""),
                    ),
                    // Text(
                    //   "الخزينة",
                    //   style: TextStyle(
                    //       color: Colors.black,
                    //       fontSize: 15,
                    //       fontFamily: "Hind4"),
                    // ),
                    SizedBox(width: 10),
                    DropdownButton(
                      value: "التقارير",
                      items: dropdownItems,
                      onChanged: (Object? value) {},
                      icon: Text(""),
                    ),
                    SizedBox(width: 10),
                    DropdownButton(
                      value: "الفواتير",
                      items: dropdownItems,
                      onChanged: (Object? value) {},
                      icon: Text(""),
                    ),
                    SizedBox(width: 10),
                    DropdownButton(
                      value: "إشتراكي",
                      items: dropdownItems,
                      onChanged: (Object? value) {},
                      icon: Text(""),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "ــ     المستخدم :  ${appData.activeUsers![select].title}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: "Hind4"),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 100,
                      ),
                    ),
                    Container(
                        // color: Colors.blue.shade200,
                        width: 60,
                        height: 30,
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Text(
                              DateTime.now().hour > 12 ? "PM" : "AM",
                              style: TextStyle(
                                  fontFamily: "Hind",
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "${DateTime.now().hour}:${DateTime.now().minute}",
                              style: TextStyle(
                                  fontFamily: "Hind",
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              Tabs(),
              // Container(width: 50,height: 50,color: Colors.amber,)
              // ElevatedButton(onPressed: (){exit(1);}, child: Text("خروج"))

              // Center(
              //   child: ConstrainedBox(
              //     constraints: BoxConstraints.tight(Size(300.0,200.0)),
              //     child: MouseRegion(
              //       onEnter: _incrementEnter,
              //       onHover: _updateLocation,
              //       onExit: _incrementExit,
              //       child: Container(
              //         color: Colors.lightBlueAccent,
              //         child: Stack(children: [
              //           Column(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: <Widget>[
              //               const Text(
              //                   'You have entered or exited this box this many times:'),
              //               Text(
              //                 '$_enterCounter Entries\n$_exitCounter Exits',
              //                 style: Theme.of(context).textTheme.headline4,
              //               ),
              //               Text(
              //                 'The cursor is here: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})',
              //               ),
              //             ],
              //           ),
              //           Text("test"),
              //           Transform(
              //               transform: Matrix4.translationValues(x, y - 128, 0.0),
              //               child: CircleAvatar())
              //         ]),
              //       ),
              //     ),
              //   ),
              // )
              // MouseRegion(
              //   // onEnter:_updateLocation ,
              //   onHover: _updateLocation,

              //   child: GestureDetector(
              //     onTap: (){
              //       setState(() {
              //       _x =  x-_size.width+100;
              //       });
              //     },
              //     child: Container(
              //       width: _size.width,
              //       height: 30,
              //       color: Colors.white,
              //       child: Transform(
              //         transform: Matrix4.translationValues(_x, 0, 0),
              //         child: Row(
              //           children: [
              //             Container(
              //               width: 200,
              //               height: 30,
              //               color: Colors.red,
              //               child: Text("$x"),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

              // Transform(transform: Matrix4.translationValues(-750,300,0),child: Container(width: 100,height: 30,color: Colors.red,),)
            ],
          ),
        ]),
      ),
    );
  }
}
// 