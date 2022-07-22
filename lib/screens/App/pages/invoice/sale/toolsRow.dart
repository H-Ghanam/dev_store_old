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
    return Container(
      color: const Color.fromARGB(255, 177, 177, 177),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(m.Icons.keyboard_double_arrow_right_outlined, size: 30,color: Colors.black,),
          Icon(m.Icons.keyboard_double_arrow_left_outlined, size: 30,color: Colors.black,),
          Icon(m.Icons.keyboard_arrow_left, size: 30,color: Colors.black,),
          Icon(m.Icons.search, size: 30,color: Colors.black,)
        ],
      ),
    );
  }
}
