// ignore_for_file: sized_box_for_whitespace

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../theme.dart';

class WingsCard extends StatefulWidget {
  const WingsCard({Key? key}) : super(key: key);

  @override
  State<WingsCard> createState() => _WingsCardState();
}

class _WingsCardState extends State<WingsCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final appTheme = context.watch<AppTheme>();
     Typography typography= FluentTheme.of(context).typography;
    return Row(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(margin: EdgeInsets.only(left: (0.5/100)*size.width),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: appTheme.color, blurRadius: 0.1, spreadRadius: 1)
                ],
                borderRadius: BorderRadius.circular(10),
                // color: const Color.fromARGB(255, 7, 28, 61),
                gradient: LinearGradient(
                    begin: AlignmentDirectional.bottomStart,
                    colors: [
                      appTheme.color,
                      appTheme.color.lightest,
                    ])),
            width: (7/100)*size.width,
            height: (12.5/100)*size.height,
            child: Column(
              children: [
                Stack(children: [
                  Center(child: Image.asset("assets/images/6.png", width: (9/100)*size.height)),
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(top: (9/100)*size.height),
                    child: Text(
                      "Wings",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: typography.body!.fontSize!+2,
                          fontWeight: FontWeight.bold,
                          fontFamily: "En"),
                    ),
                  )
                ]),
              ],
            ),
          ),
        ),
        // const SizedBox(
        //   width: 8,
        // ),
        Container(
          // height: (12.5/100)*size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
                "وينجز لإدارة الأعمال",
                style: TextStyle(fontFamily: "Hind4", fontSize: typography.titleLarge!.fontSize!),
              ),
              Text(
                "أسهل وأدق برنامج لإدارة المحلات والمخازن\nفي العالم العربي",
                style: TextStyle(fontFamily: "Hind4", fontSize: typography.bodyLarge!.fontSize!),
              ),
              SizedBox(height: (3/100)*size.height,)
            ],
          ),
        )
      ],
    );
  }
}
