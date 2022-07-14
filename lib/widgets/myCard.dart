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

class _MyCardState extends State<MyCard> {
  double _opacity = 0.0;
  //  Gradient? _gradient = widget.gradient;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          width: widget.size,
          height: 125,
          decoration: BoxDecoration(gradient: widget.gradient),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             
              Image.asset(
                "${widget.image}",
                width: 70,
              ),
               Text(
                "${widget.title}",
                style: TextStyle(fontFamily: "Hind3", fontSize: 23),
              ),
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
        onEnter: (s) {
          setState(() {
            _opacity = 0.5;
          });
        },
        child: Container(
          width: widget.size,
          height: 125,
          color: Color.fromARGB(255, 217, 255, 0).withOpacity(_opacity),
        ),
      ),
    ]);
  }
}
