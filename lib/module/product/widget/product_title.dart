import 'package:landing_page/core.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Our Products",
      style: GoogleFonts.lato(
        fontSize: MediaQuery.of(context).size.width * 0.05,
        fontWeight: FontWeight.w900,
        color: primaryColor,
      ),
    );
  }
}
