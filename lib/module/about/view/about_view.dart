import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:landing_page/core.dart';
import 'package:get/get.dart';
import 'package:typewritertext/typewritertext.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AboutController>(
      init: AboutController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
            body: Obx(
          () => Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.05),
            child: Center(
              child: MediaQuery.sizeOf(context).width > 580
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Center(
                            child: Container(
                              // width: 500,
                              child: Lottie.asset(
                                'assets/lottie/about.json',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Container(
                              // width: 500,

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "About Us...!",
                                    style: GoogleFonts.lato(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      fontWeight: FontWeight.w900,
                                      color: primaryColor,
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Card(
                                    color:
                                        Colors.green.shade100.withOpacity(0.5),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.4,
                                      padding: const EdgeInsets.all(24.0),
                                      child: TypeWriterText(
                                        repeat: false,
                                        duration:
                                            const Duration(milliseconds: 50),
                                        text: Text(
                                          controller.aboutContent.value,
                                          style: GoogleFonts.lato(
                                            color: primaryColor,
                                            fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width <
                                                    580
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.02
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.02,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Center(
                            child: Container(
                              // width: 500,
                              child: Lottie.asset(
                                'assets/lottie/about.json',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          child: Center(
                            child: Container(
                              // width: 500,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "About Us...!",
                                    style: GoogleFonts.lato(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      fontWeight: FontWeight.w900,
                                      color: primaryColor,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Card(
                                    color: primaryColor.withOpacity(0.5),
                                    child: Container(
                                      padding: const EdgeInsets.all(24.0),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.20,
                                      child: TypeWriterText(
                                        repeat: false,
                                        duration:
                                            const Duration(milliseconds: 50),
                                        text: Text(
                                          controller.aboutContent.value,
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.03,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ));
      },
    );
  }
}
