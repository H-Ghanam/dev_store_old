// ignore_for_file: library_private_types_in_public_api, sort_child_properties_last

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class NewTabs extends StatefulWidget {
  const NewTabs({Key? key}) : super(key: key);

  @override
  _NewTabsState createState() => _NewTabsState();
}

class _NewTabsState extends State<NewTabs> {
  List<TabData> tabs = [
    TabData(
      text: 'Home Page                                ',
      content: Container(),
      closable: false,
    ),
    TabData(
      text: 'About Land Trucking                       ',
      content: Container(),
      closable: false,
    ),
  ];
  late TabbedViewController _controller;

  @override
  void initState() {
    super.initState();
    tabs.map((e) => e);
    _controller = TabbedViewController(tabs);
  }

  @override
  Widget build(BuildContext context) {
    DesktopWindow.setFullScreen(true);

    TabbedView tabbedView = TabbedView(controller: _controller);
    TabbedViewThemeData().tabsArea.border =
        Border(bottom: BorderSide(color: Colors.green[700]!));

    return Scaffold(
        body: Container(
            width: 500,
            height: 500,
            child: TabbedViewTheme(
                child: tabbedView,
                data: TabbedViewThemeData.minimalist(colorSet: Colors.red)),
            padding: const EdgeInsets.all(0))
            );
  }
}
