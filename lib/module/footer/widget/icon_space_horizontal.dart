import 'package:flutter/material.dart';

class IconSpaceHorizontal extends StatelessWidget {
  const IconSpaceHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width * 0.02);
  }
}
