import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContacChild extends StatelessWidget {
  final String label;
  final String value;
  final bool mobile;
  const ContacChild({
    super.key,
    required this.label,
    required this.value,
    required this.mobile,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          mobile ? MainAxisAlignment.spaceBetween : MainAxisAlignment.start,
      children: [
        Container(
          width: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: GoogleFonts.lato(
                  fontSize: mobile ? 12.0 : 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                " :  ",
                style: GoogleFonts.lato(
                  fontSize: mobile ? 12.0 : 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Text(
          value,
          style: GoogleFonts.lato(
            fontSize: mobile ? 12.0 : 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
