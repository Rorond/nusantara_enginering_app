import 'package:landing_page/core.dart';

class FooterContact extends StatelessWidget {
  final bool mobile;
  const FooterContact({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mobile ? 140 : 170,
      child: Column(
        crossAxisAlignment:
            mobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:
                mobile ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              Text(
                "Contact",
                style: GoogleFonts.lato(
                  fontSize: mobile ? 18.0 : 24.0,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ],
          ),
          SizedBox(height: mobile ? 10 : 20),
          LabelWhatsApp(mobile: mobile),
          SizedBox(height: mobile ? 2 : 5),
          LabelEmail(mobile: mobile),
          SizedBox(height: mobile ? 2 : 5),
          LabelInstagram(mobile: mobile),
          SizedBox(height: mobile ? 2 : 5),
          LabelAddress(mobile: mobile),
        ],
      ),
    );
  }
}
