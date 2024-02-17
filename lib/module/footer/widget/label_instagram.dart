import 'package:landing_page/core.dart';

class LabelInstagram extends StatelessWidget {
  final bool mobile;
  const LabelInstagram({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    return ContacChild(
      label: "Instagram",
      value: "@infoservicenusantara",
      mobile: mobile,
    );
  }
}
