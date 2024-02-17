import 'package:landing_page/core.dart';

class LabelEmail extends StatelessWidget {
  final bool mobile;
  const LabelEmail({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    return ContacChild(
      label: "Email",
      value: "infoservicenusantara@gmail.com",
      mobile: mobile,
    );
  }
}
