import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/service_controller.dart';
import 'package:landing_page/core.dart';
import 'package:get/get.dart';

class ServiceView extends StatelessWidget {
  const ServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ServiceController>(
      init: ServiceController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    "Halaman Layanan Jasa",
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
