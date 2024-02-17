import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:typewritertext/typewritertext.dart';
import 'package:landing_page/core.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: Colors.black.withOpacity(0.1),
          body: Obx(
            () => SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.jpeg'),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                      color: Colors.black.withOpacity(0.3),
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nusantara Engineering Solution",
                            style: GoogleFonts.lato(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF094A45),
                            ),
                          ),
                          TypeWriterText(
                            repeat: true,
                            duration: const Duration(milliseconds: 250),
                            text: Text(
                              'MAKE MORE HAPPEN..',
                              style: GoogleFonts.lato(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 50),
                          Align(
                            alignment: Alignment.center,
                            child: InkWell(
                              onHover: (value) {
                                controller.setOrderFocus();
                              },
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      scrollable: true,
                                      title: const Text("Form Pemesanan"),
                                      actions: [
                                        Center(
                                          child: SizedBox(
                                            height: 50,
                                            width: 250,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.green[700],
                                              ),
                                              onPressed: () async {
                                                String message =
                                                    "Form Pemesanan CV. NUSANTARA ENGINERING SOLUTION\n\nEmail : ${controller.emailController.text}\nNama : ${controller.nameController.text}\nLokasi : ${controller.locationController.text}\nKendala : ${controller.kendalaController.text}";
                                                await controller.sendToWhatsApp(
                                                  "6282388453744",
                                                  message,
                                                );
                                              },
                                              child: Text(
                                                "Kirim Ke WhatsApp",
                                                style: GoogleFonts.lato(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                      content: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.01),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.55,
                                        width:
                                            MediaQuery.of(context).size.width <
                                                    800
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.45,
                                        child: SingleChildScrollView(
                                          controller: ScrollController(),
                                          child: Column(
                                            children: [
                                              CustomTextbox(
                                                  controller: controller
                                                      .emailController,
                                                  label: "Email"),
                                              const SizedBox(height: 15),
                                              CustomTextbox(
                                                  controller:
                                                      controller.nameController,
                                                  label: "Nama"),
                                              const SizedBox(height: 15),
                                              const CboLocation(),
                                              const SizedBox(height: 15),
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10.0),
                                                  child: Text(
                                                    "Kendala",
                                                    style: GoogleFonts.lato(
                                                      fontSize: 16.0,
                                                      color: Colors.grey[800],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 150,
                                                child: TextFormField(
                                                  maxLines: 5,
                                                  controller: controller
                                                      .kendalaController,
                                                  decoration:
                                                      const InputDecoration(
                                                    // labelText: "Kendala",

                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(8.0),
                                                      ),
                                                      borderSide: BorderSide(
                                                        color: Colors.grey,
                                                        width: 0.5,
                                                      ),
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(8.0),
                                                      ),
                                                      borderSide: BorderSide(
                                                        color: Colors.grey,
                                                        width: 0.5,
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(8.0),
                                                      ),
                                                      borderSide: BorderSide(
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                height: MediaQuery.of(context).size.width < 1000
                                    ? 50
                                    : 60,
                                width: 250,
                                decoration: BoxDecoration(
                                  color: controller.isOrderFocus.value
                                      ? Colors.white
                                      : Color(0xFF094A45),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "Order Now",
                                    style: GoogleFonts.lato(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: controller.isOrderFocus.value
                                          ? Color(0xFF094A45)
                                          : Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
