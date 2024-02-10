import 'package:flutter/material.dart';

class CustomTextbox extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  const CustomTextbox(
      {super.key, required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          label: Text(
            label,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 0.5,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 0.5,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
        ),
      ),
    );
  }
}
