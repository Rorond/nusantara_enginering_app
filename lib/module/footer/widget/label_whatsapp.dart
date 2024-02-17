import 'package:landing_page/core.dart';

class LabelWhatsApp extends StatelessWidget {
  final bool mobile;
  const LabelWhatsApp({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    return ContacChild(
      label: "Whatsapp",
      value: "082388453744",
      mobile: mobile,
    );
  }
}
