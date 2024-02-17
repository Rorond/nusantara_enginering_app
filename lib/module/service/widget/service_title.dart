import 'package:landing_page/core.dart';

class ServiceTitle extends StatelessWidget {
  const ServiceTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Our Services",
      style: GoogleFonts.lato(
        fontSize: MediaQuery.of(context).size.width * 0.05,
        fontWeight: FontWeight.w900,
        color: primaryColor,
      ),
    );
  }
}
