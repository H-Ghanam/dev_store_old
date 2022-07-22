import 'package:dev_store/screens/app/pages/home/home_page.dart';
import 'package:dev_store/screens/widgets/page.dart';
import 'package:fluent_ui/fluent_ui.dart';
// import 'package:url_launcher/link.dart';

class HomeScrollablePage extends ScrollablePage {
  HomeScrollablePage() : super(scrollable: false);

  // @override
  // Widget buildHeader(BuildContext context) {
  //   final theme = FluentTheme.of(context);
  //   return PageHeader(
  //     title: Row(
  //       children: [
  //         Image.asset("Assets/images/6.png", scale: 4),
  //         const SizedBox(width: 5),
  //         Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
  //           Text("وينجز لإدارة الأعمال", style: theme.typography.title),
  //           const SizedBox(height: 5),
  //           Text("أسهل وأدق برنامج لإدارة المحلات والمخازن في العالم العربي",
  //               style: theme.typography.caption)
  //         ]),
  //       ],
  //     ),
  //     commandBar: Row(children: [
  //       Button(child: Text("new"), onPressed: () {}),
  //       Button(child: Text("new"), onPressed: () {}),
  //     ]),
  //   );
  // }

  bool selected = true;
  String? comboboxValue;

  @override
  List<Widget> buildScrollable(BuildContext context) {
    // assert(debugCheckHasFluentTheme(context));
    // final theme = FluentTheme.of(context);

    // final sections = <Section>[
    //   Section("تقارير", FluentIcons.repo_solid),
    //   Section("تقارير", FluentIcons.repo_solid),
    //   Section("تقارير", FluentIcons.repo_solid),
    // ];

    // return InvoiceTabViewPage().buildScrollable(context);
    // return [const HomeW()];

    //   return [
    //     // SingleChildScrollView(),
    //     SingleChildScrollView(
    //       child: Container(
    //         width: 200,
    //         child: ListView.builder(
    //             // controller: controller,
    //             // scrollDirection: Axis.horizontal,
    //             shrinkWrap: true,
    //             // physics: const NeverScrollableScrollPhysics(),
    //             itemCount: sections.length,
    //             itemBuilder: (context, index) {
    //               final section = sections[index];
    //               return ListTile(
    //                 title: Text(section.title),
    //                 subtitle: Text("subtitle"),
    //                 leading: Text("leding"),
    //                 trailing: Text("trailing"),
    //               );
    //             }),
    //       ),
    //     )
    //   ];
    return [const HomePage()];
  }
}

class Section {
  Section(this.title, this.icon);

  String title;
  IconData icon;
}
