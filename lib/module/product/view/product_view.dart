import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/product_controller.dart';
import 'package:landing_page/core.dart';
import 'package:get/get.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      init: ProductController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "Halaman Variasi Produk",
                  style: GoogleFonts.lato(
                    fontSize: 30.0,
                  ),
                ),
              )),
        );
      },
    );
  }
}
