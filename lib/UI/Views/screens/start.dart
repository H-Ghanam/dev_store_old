// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';
import 'package:window_manager/window_manager.dart';
import '../widgets/drop.dart';
import 'login.dart';

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
     testWindowFunctions();
    tabs.map((e) => e);
    _controller = TabbedViewController(tabs);
  }
  int index = 1;


  double x = 0.0;
  double y = 0.0;

  //TODO ///// Start New Tabs /////
  List<TabData> tabs = [
    TabData(
      text: '                     إبدأ مع وينجز',
      content: Container(child: Center(child: Text("صفحة البداية",style: TextStyle(fontFamily: "Hind2",fontSize: 50,color: Colors.amber),),),),
      closable: false,
    ),
    TabData(
      text: '                          بيع',
      content: Container(child: Center(child: Text("صفحة أخرى",style: TextStyle(fontFamily: "Hind2",fontSize: 50),),),),
      closable: true,
    ),
  ];
  late TabbedViewController _controller;

  //TODO ///// End New Tabs /////

  @override
  Widget build(BuildContext context) {
    // DesktopWindow.setFullScreen(true);
      TabbedView tabbedView = TabbedView(controller: _controller);
    TabbedViewThemeData().tabsArea.border =
        Border(bottom: BorderSide(color: Colors.green[700]!));
    Size _size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: Stack(children: [
          SizedBox(
              width: double.infinity,
              child:
              Container(
    
            child: TabbedViewTheme(
                child: tabbedView,
                data: TabbedViewThemeData.minimalist(colorSet: Colors.red)),
            padding: const EdgeInsets.only(top: 39.5))
              //  Image.asset(
              //   "assets/images/2.png",
              //   fit: BoxFit.fill,
              // )
              ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 39,
                color: Colors.blue.shade100,
                padding: EdgeInsets.only(right: 5),
                child: Row(
                  children: [
                  
                    DropdownButton(
                      value: "Wings",
                      items: dropdownItems,
                      onChanged: (Object? value) {},
                      icon: Text(""),
                    ),
                 
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
              // Tabs(),
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