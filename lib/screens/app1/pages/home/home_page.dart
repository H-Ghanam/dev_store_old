import 'package:dev_store/screens/app/pages/home/home_content.dart';
import 'package:dev_store/screens/widgets/header.dart';
import 'package:dev_store/screens/widgets/page.dart';
import 'package:fluent_ui/fluent_ui.dart';

class HomePage extends ScrollablePage {
  HomePage() : super(scrollable: false);

  // @override
  // Widget buildHeader(BuildContext context) {
  //   final theme = FluentTheme.of(context);
  //   return Header();
  // PageHeader(
  //   title: Row(
  //     children: [
  //       Image.asset("Assets/images/6.png", scale: 4),
  //       const SizedBox(width: 5),
  //       Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
  //         Text("وينجز لإدارة الأعمال", style: theme.typography.title),
  //         const SizedBox(height: 5),
  //         Text("أسهل وأدق برنامج لإدارة المحلات والمخازن في العالم العربي",
  //             style: theme.typography.caption)
  //       ]),
  //     ],
  //   ),
  //   commandBar: Row(children: [
  //     Button(child: const Text("new"), onPressed: () {}),
  //     Button(child: const Text("new"), onPressed: () {}),
  //   ]),
  // );
  // }

  @override
  List<Widget> buildScrollable(BuildContext context) {
    return [const HomeContent()];
  }
}
