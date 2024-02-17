import 'package:landing_page/core.dart';

class FooterConnectedWithUs extends StatelessWidget {
  final bool mobile;
  const FooterConnectedWithUs({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mobile ? 70 : 200,
      child: Column(
        crossAxisAlignment:
            mobile ? CrossAxisAlignment.center : CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Connected With Us",
                style: GoogleFonts.lato(
                  fontSize: mobile ? 18.0 : 24.0,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ],
          ),
          SizedBox(height: mobile ? 10 : 20),
          Row(
            mainAxisAlignment:
                mobile ? MainAxisAlignment.center : MainAxisAlignment.end,
            children: [
              WhatsAppIcon(mobile: mobile),
              mobile ? IconSpaceVertical() : IconSpaceHorizontal(),
              InstagramIcon(mobile: mobile),
              mobile ? IconSpaceVertical() : IconSpaceHorizontal(),
              GmailIcon(mobile: mobile),
              mobile ? IconSpaceVertical() : IconSpaceHorizontal(),
              MapIcon(mobile: mobile),
            ],
          ),
        ],
      ),
    );
  }
}
