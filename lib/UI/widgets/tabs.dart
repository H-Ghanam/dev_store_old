// ignore_for_file: prefer_const_constructors

import 'package:fluent_ui/fluent_ui.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _itemCount = 1;
  Color _color = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.blue.dark,
      padding: const EdgeInsets.only(bottom: 0.5),
      width: _width,
      height: 27,
      child: ListView.builder(
          itemCount: _itemCount,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                const SizedBox(
                  width: 0,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onHover: (event) {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: index % 2 == 0 ? Colors.blue : Colors.blue.light,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(11),
                            bottomRight: index > 0
                                ? Radius.circular(11)
                                : Radius.circular(0))),
                    height: 50,
                    width: _itemCount < 8 ? 190 : (_width / _itemCount) - 6,
                    child: Row(
                      children: [
                        Text(
                          "    إبدأ مع وينجز",
                          style: TextStyle(fontFamily: "Hind2", fontSize: 17),
                        ),
                        Expanded(child: SizedBox()),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _itemCount--;
                            });
                          },
                          icon: Icon(FluentIcons.close_pane),
                        ),
                      ],
                    ),
                  ),
                ),
                index == _itemCount - 1
                    ? Row(
                        children: [
                          const SizedBox(
                            width: 2,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: _color,
                                borderRadius: BorderRadius.circular(15)),
                            height: 28,
                            width: 30,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _itemCount++;
                                  _color = Colors.transparent;
                                });
                              },
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                onHover: (S) {
                                  setState(() {
                                    _color = Colors.blue.light;
                                  });
                                },
                                onExit: (S) {
                                  setState(() {
                                    _color = Colors.transparent;
                                  });
                                },
                                child: Icon(
                                  FluentIcons.add,
                                  size: 17,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Container()
              ],
            );
          }),
    );
  }
}
