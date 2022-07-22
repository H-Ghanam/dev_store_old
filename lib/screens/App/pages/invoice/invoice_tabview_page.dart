import 'package:dev_store/screens/app/app_tabview.dart';
import 'package:dev_store/screens/widgets/page.dart';
import 'package:fluent_ui/fluent_ui.dart';

class InvoiceTabviewPage extends ScrollablePage {
  InvoiceTabviewPage() : super(scrollable: false);

  late int test = 1;

  @override
  List<Widget> buildScrollable(BuildContext context) {
    return [
      const Center(
        child: AppTabView(),
      ),
    ];
  }
}
