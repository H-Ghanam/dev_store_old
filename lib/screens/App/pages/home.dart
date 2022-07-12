import 'package:dev_store/widgets/home_w.dart';
import 'package:dev_store/widgets/page.dart';
import 'package:dev_store/widgets/tab_view.dart';
import 'package:fluent_ui/fluent_ui.dart';
// import 'package:url_launcher/link.dart';

class HomePage extends ScrollablePage {
  // @override
  // Widget buildHeader(BuildContext context) {
  //   return PageHeader(
  //     title: const Text('Fluent UI for Flutter Showcase App'),
  //     commandBar: Row(children: [
  //       Link(
  //         uri: Uri.parse('https://github.com/bdlukaa/fluent_ui'),
  //         builder: (context, open) => Tooltip(
  //           message: 'Source code',
  //           child: IconButton(
  //             icon: const Icon(FluentIcons.open_source, size: 24.0),
  //             onPressed: open,
  //           ),
  //         ),
  //       ),
  //     ]),
  //   );
  // }

  bool selected = true;
  String? comboboxValue;

  @override
  List<Widget> buildScrollable(BuildContext context) {
    assert(debugCheckHasFluentTheme(context));
    final theme = FluentTheme.of(context);

    // return TabViewPage().buildScrollable(context);
    return [const HomeW()];
  }
}
