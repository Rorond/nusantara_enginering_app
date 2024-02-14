import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:landing_page/core.dart';
import 'package:get/get.dart';
import 'package:typewritertext/typewritertext.dart';

class WhyUsView extends StatelessWidget {
  const WhyUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WhyUsController>(
      init: WhyUsController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
            height: MediaQuery.of(context).size.height,
            child: MediaQuery.of(context).size.width < 580
                ? Center(
                    child: Column(
                      children: [
                        Expanded(
                          child: Center(
                            child: Container(
                              // width: 500,
                              child: Lottie.asset(
                                'assets/lottie/why_us.json',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Why Us...?",
                                style: GoogleFonts.lato(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.05,
                                  fontWeight: FontWeight.w900,
                                  color: primaryColor,
                                ),
                              ),
                              SizedBox(height: 10),
                              Card(
                                color: primaryColor.withOpacity(0.5),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.20,
                                  padding: EdgeInsets.only(
                                      bottom: 0, top: 15, left: 15, right: 15),
                                  child: TypeWriterText(
                                    repeat: false,
                                    duration: Duration(milliseconds: 100),
                                    text: Text(
                                      controller.whyUsContent.value,
                                      style: GoogleFonts.lato(
                                        fontSize:
                                            MediaQuery.of(context).size.width <
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
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Why Us...?",
                                style: GoogleFonts.lato(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.05,
                                  fontWeight: FontWeight.w900,
                                  color: primaryColor,
                                ),
                              ),
                              SizedBox(height: 30),
                              Card(
                                color: Colors.green.shade100.withOpacity(0.5),
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  child: TypeWriterText(
                                    repeat: false,
                                    duration: Duration(milliseconds: 100),
                                    text: Text(
                                      controller.whyUsContent.value,
                                      style: GoogleFonts.lato(
                                        fontSize:
                                            MediaQuery.of(context).size.width <
                                                    580
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.02
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.02,
                                        fontWeight: FontWeight.w900,
                                        color: primaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Container(
                              // width: 500,
                              child: Lottie.asset(
                                'assets/lottie/why_us.json',
                              ),
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
