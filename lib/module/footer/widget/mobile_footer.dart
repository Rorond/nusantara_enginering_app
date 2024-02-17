import 'package:landing_page/core.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: primaryColor.withOpacity(0.5),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              FooterTopContent(
                label: "Harga Transparant",
                iconSize: 20,
                fontSize: 14,
              ),
              FooterTopContent(
                label: "Garansi Semua Beres",
                iconSize: 20,
                fontSize: 14,
              ),
              FooterTopContent(
                label: "Garansi 30 Hari",
                iconSize: 20,
                fontSize: 14,
              ),
              Divider(height: 50, thickness: 3),
              FooterContact(mobile: true),
              FooterConnectedWithUs(mobile: true),
            ],
          ),
        ),
        Container(
          height: 50,
          width: double.infinity,
          color: primaryColor,
          child: Center(
            child: Text(
              "Nusantara Engineering Solution || Copyright © 2024. All Rights Reserved.",
              style: GoogleFonts.lato(
                color: Colors.grey,
                fontSize: 10,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        )
      ],
    );
  }
}
