// ignore_for_file: file_names

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as m;

class ToolsRow extends StatefulWidget {
  const ToolsRow({Key? key}) : super(key: key);

  @override
  State<ToolsRow> createState() => _ToolsRowState();
}

class _ToolsRowState extends State<ToolsRow> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Typography typography= FluentTheme.of(context).typography;

    return Container(
      color: const Color.fromARGB(255, 177, 177, 177),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(size: (1.5/100)*size.width ,m.Icons.keyboard_double_arrow_right_outlined,color: Colors.black,),
          Icon(size: (1.5/100)*size.width,m.Icons.keyboard_double_arrow_left_outlined,color: Colors.black,),
          Icon(size: (1.5/100)*size.width,m.Icons.keyboard_arrow_left,color: Colors.black,),
          Icon(size: (1.5/100)*size.width  ,m.Icons.search,color: Colors.black,)
        ],
      ),
    );
  }
}
