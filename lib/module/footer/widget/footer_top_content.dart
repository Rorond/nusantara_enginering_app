import 'package:landing_page/core.dart';

class FooterTopContent extends StatelessWidget {
  final String label;
  final double fontSize;
  final double iconSize;
  const FooterTopContent(
      {super.key,
      required this.label,
      required this.fontSize,
      required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.check_circle,
          color: primaryColor,
          size: iconSize,
        ),
        SizedBox(width: 5),
        Text(
          label,
          style: GoogleFonts.lato(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
