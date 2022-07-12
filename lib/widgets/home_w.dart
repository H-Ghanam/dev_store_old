import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeW extends StatefulWidget {
  const HomeW({Key? key}) : super(key: key);

  @override
  State<HomeW> createState() => _HomeWState();
}

class _HomeWState extends State<HomeW> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Home"),
    );
  }
}
