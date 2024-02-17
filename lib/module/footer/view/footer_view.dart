import 'package:landing_page/core.dart';

class FooterView extends StatelessWidget {
  const FooterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: MediaQuery.of(context).size.width < 650
          ? const MobileFooter()
          : DesktopFooter(),
    );
  }
}
