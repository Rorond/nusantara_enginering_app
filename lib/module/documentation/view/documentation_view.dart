import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          backgroundColor: primaryColor.withOpacity(0.8),
          body: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Our Clients",
                      style: GoogleFonts.lato(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 30),
                    LayoutBuilder(
                      builder: (context, constraint) {
                        List menus = [
                          {"icon_string": "1"},
                          {"icon_string": "2"},
                          {"icon_string": "3"},
                          {"icon_string": "4"},
                          {"icon_string": "5"},
                          {"icon_string": "6"},
                          {"icon_string": "7"},
                          {"icon_string": "8"},
                          {"icon_string": "9"},
                          {"icon_string": "10"},
                          {"icon_string": "11"},
                          {"icon_string": "12"},
                          {"icon_string": "13"},
                          {"icon_string": "14"},
                          {"icon_string": "15"},
                          {"icon_string": "17"},
                          {"icon_string": "18"},
                          {"icon_string": "19"},
                          {"icon_string": "20"},
                          {"icon_string": "21"},
                          {"icon_string": "22"},
                        ];

                        return Wrap(
                          children: List.generate(
                            menus.length,
                            (index) {
                              var item = menus[index];

                              var size = constraint.biggest.width / 8;

                              return Container(
                                height: size / 1.5,
                                width: size,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/clients/${item['icon_string']}.png')),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      blurRadius: 24,
                                      offset: Offset(0, 11),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )),
        );
      },
    );
  }
}
