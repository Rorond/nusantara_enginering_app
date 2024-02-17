import 'package:flutter/material.dart';

class IconSpaceVertical extends StatelessWidget {
  const IconSpaceVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.height * 0.02);
  }
}
