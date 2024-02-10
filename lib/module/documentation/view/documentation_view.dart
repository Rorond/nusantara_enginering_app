import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/documentation_controller.dart';
import 'package:landing_page/core.dart';
import 'package:get/get.dart';

class DocumentationView extends StatelessWidget {
  const DocumentationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DocumentationController>(
      init: DocumentationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    "Halaman Dokumentasi",
                    style: GoogleFonts.lato(
                      fontSize: 30.0,
                    ),
                  ),
                )),
          ),
        );
      },
    );
  }
}
