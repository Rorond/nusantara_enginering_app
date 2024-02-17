import 'package:flutter/material.dart';

class NavLogo extends StatelessWidget {
  const NavLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: MediaQuery.of(context).size.width < 680 ? 80 : 130,
      width: MediaQuery.of(context).size.width < 680 ? 100 : 150,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(100.0),
        ),
      ),
      child: Image.asset(
        'assets/images/logo.png',
        height: MediaQuery.of(context).size.width < 680 ? 80 : 150,
        width: MediaQuery.of(context).size.width < 680 ? 100 : 150,
      ),
    );
  }
}
