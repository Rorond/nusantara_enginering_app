import 'package:landing_page/core.dart';

class LabelAddress extends StatelessWidget {
  final bool mobile;
  const LabelAddress({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    return ContacChild(
      label: "Address",
      value: "Jl. Salak II No. 26, Margonda, Depok",
      mobile: mobile,
    );
  }
}
