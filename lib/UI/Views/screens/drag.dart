import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';
import 'package:fluent_ui/fluent_ui.dart' as f;

class DraggableTabExample extends StatefulWidget {
  @override
  State<DraggableTabExample> createState() => _DraggableTabExampleState();
}

class _DraggableTabExampleState extends State<DraggableTabExample> {
  Offset? _offest;

  List<TabData> tabs = [
    TabData(
      text: '                     إبدأ مع وينجز',
      content: Container(
        child: Center(
          child: Stack(children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                "assets/images/2.png",
                fit: BoxFit.fill,
              ),
            ),
            Text(
              "صفحة البداية",
              style: TextStyle(
                  fontFamily: "Hind2", fontSize: 50, color: Colors.amber),
            )
          ]),
        ),
      ),
      closable: false,
    ),
    TabData(
      text: '                                 شرااااااا',
      content: Container(
        child: Center(
          child: Text(
            "فاتورة بيع",
            style: TextStyle(fontFamily: "Hind2", fontSize: 50),
          ),
        ),
      ),
      closable: true,
    ),
    TabData(
      text: '                                  بيع',
      content: Container(
        child: Center(
          child: Text(
            "فاتورة بيع",
            style: TextStyle(fontFamily: "Hind2", fontSize: 50),
          ),
        ),
      ),
      closable: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    TabbedView tabbedView = TabbedView(
        controller: TabbedViewController(tabs),
        draggableTabBuilder: (int tabIndex, TabData tab, Widget tabWidget) {
          return Draggable<String>(
              feedbackOffset: Offset.zero,

              // childWhenDragging: Text("data"),
              // onDragEnd: (s) {
              //   setState(() {
              //     tabs.removeAt(tabIndex);
              //     tabs.insert(tabIndex + 1, tab);
              //   });
              //   print(s);
              // },
              feedback: Material(
                  child: Container(
                      child: Text(tab.text),
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(border: Border.all()))),
              data: tab.text,
              dragAnchorStrategy:
                  (Draggable<Object> draggable, context, Offset position) {
                return Offset.zero;
              },
              child: tabWidget);
        });
    return tabbedView;
  }
}
