// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:dev_store/Modules/App/bloc/app_bloc.dart';
import 'package:dev_store/screens/App/app.dart';
import 'package:dev_store/theme.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCard extends StatefulWidget {
  MyCard(
      {Key? key,
      this.title,
      this.image,
      this.gradient,
      this.size,
      required this.matchTextDirection})
      : super(key: key);

  final String? title;
  String? image;
  Gradient? gradient;
  double? size;
  bool matchTextDirection = false;

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  double _opacity = 0.0;
  //  Gradient? _gradient = widget.gradient;
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
        Typography typography= FluentTheme.of(context).typography;

    final appTheme = context.watch<AppTheme>();
    return Stack(children: [
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          width: widget.size,
          height: (12.5/100)*size.height,
          decoration: BoxDecoration(
            boxShadow:[BoxShadow(color: appTheme.color,blurRadius: 0.1,spreadRadius: 1)],
              gradient: widget.gradient,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "${widget.image}",
                width: (7/100)*size.height,
                matchTextDirection: widget.matchTextDirection,
              ),
              Text(
                "${widget.title}",softWrap: true,
                style: TextStyle(
                    fontFamily: "Hind3", fontSize:widget.title!.length>8? typography.body!.fontSize:typography.subtitle!.fontSize, color: Colors.white),
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
        child: GestureDetector(
          onTap: () {
            // context.read<AppBloc>().add(OnActivePageChange(index: 0));
            context.read<AppBloc>().add(OnActivePageChange(index: 1));
            appTheme.index = 1;
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 217, 255, 0).withOpacity(_opacity),
            ),
            width: widget.size,
            height: (12.5/100)*size.height,
          ),
        ),
      ),
    ]);
  }
}
