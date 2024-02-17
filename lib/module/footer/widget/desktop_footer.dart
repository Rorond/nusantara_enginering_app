import 'package:landing_page/core.dart';

class DesktopFooter extends StatelessWidget {
  DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 380,
          color: primaryColor.withOpacity(0.5),
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
            top: MediaQuery.of(context).size.width * 0.03,
          ),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FooterTopContent(
                      label: "Harga Transparant",
                      iconSize: 30,
                      fontSize: 18,
                    ),
                    FooterTopContent(
                      label: "Garansi Semua Beres",
                      iconSize: 30,
                      fontSize: 18,
                    ),
                    FooterTopContent(
                      label: "Garansi 30 Hari",
                      iconSize: 30,
                      fontSize: 18,
                    ),
                  ],
                ),
              ),
              Divider(
                height: 100,
                thickness: 5,
              ),
              Container(
                height: 170,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FooterContact(mobile: false),
                    FooterConnectedWithUs(mobile: false)
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 70,
          width: double.infinity,
          color: primaryColor,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Nusantara Engineering Solution || Copyright © 2024. All Rights Reserved.",
              style: GoogleFonts.lato(
                color: Colors.grey,
                fontSize: 14,
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
