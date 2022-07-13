// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:fluent_ui/fluent_ui.dart';

class MyCard extends StatefulWidget {
  MyCard({Key? key, this.title, this.image, this.gradient, this.size})
      : super(key: key);

  final String? title;
  String? image;
  Gradient? gradient;
  double? size;

  @override
  State<MyCard> createState() => _MyCardState();
}

double _opacity = 0.0;

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          width: widget.size,
          height: MediaQuery.of(context).size.height / 5.5,
          decoration: BoxDecoration(gradient: widget.gradient),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "  ${widget.title}",
                    style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                  ),
                ],
              ),
              Image.asset(
                "${widget.image}",
                width: 102,
              )
            ],
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        onExit: (e) {
          setState(() {
            _opacity = 0.0;
          });
        },
        onHover: (e) {
          setState(() {
            _opacity = 0.5;
          });
        },
        child: Container(
          width: widget.size,
          height: 140,
          color: Colors.grey.withOpacity(_opacity),
        ),
      ),
    ]);
  }
}
