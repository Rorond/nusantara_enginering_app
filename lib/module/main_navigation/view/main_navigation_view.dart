import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:landing_page/core.dart';
import 'package:get/get.dart';

class MainNavigationView extends StatelessWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainNavigationController>(
      init: MainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 90,
            backgroundColor: const Color.fromRGBO(176, 218, 255, 1),
            title: Image.asset(
              'assets/images/logo.png',
              height: 150,
              width: 150,
            ),
            titleTextStyle: GoogleFonts.lato(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            titleSpacing: MediaQuery.of(context).size.width * 0.05,
            centerTitle: false,
            elevation: 0,
            actions: [
              MediaQuery.of(context).size.width < 850
                  ? InkWell(
                      onTap: () {
                        
                      },
                      child: const Icon(Icons.menu),
                    )
                  : Obx(() {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    onTap: () async {
                                      await controller.pageController
                                          .animateToPage(
                                        0,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeInOut,
                                      );
                                      controller.selectedMenu(0);
                                    },
                                    onHover: (value) {
                                      controller.setHomeHover();
                                    },
                                    child: Text(
                                      "Home",
                                      style: GoogleFonts.lato(
                                        fontSize:
                                            MediaQuery.of(context).size.width <
                                                    1000
                                                ? 14
                                                : 18,
                                        fontWeight: controller.isHomeHover.value
                                            ? FontWeight.w600
                                            : controller.selectedMenu.value == 0
                                                ? FontWeight.w600
                                                : FontWeight.w300,
                                        color: controller.isHomeHover.value
                                            ? Colors.blue[700]
                                            : controller.selectedMenu.value == 0
                                                ? Colors.blue[700]
                                                : Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width < 1000
                                            ? 10
                                            : 20,
                                  ),
                                  InkWell(
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    onTap: () async {
                                      await controller.pageController
                                          .animateToPage(
                                        1,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeInOut,
                                      );

                                      controller.selectedMenu(1);
                                    },
                                    onHover: (value) {
                                      controller.setAboutHover();
                                    },
                                    child: Text(
                                      "Tentang Kami",
                                      style: GoogleFonts.lato(
                                        fontSize:
                                            MediaQuery.of(context).size.width <
                                                    1000
                                                ? 14
                                                : 18,
                                        fontWeight: controller
                                                .isAboutHover.value
                                            ? FontWeight.w600
                                            : controller.selectedMenu.value == 1
                                                ? FontWeight.w600
                                                : FontWeight.w300,
                                        color: controller.isAboutHover.value
                                            ? Colors.blue[700]
                                            : controller.selectedMenu.value == 1
                                                ? Colors.blue[700]
                                                : Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width < 1000
                                            ? 10
                                            : 20,
                                  ),
                                  InkWell(
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    onTap: () async {
                                      await controller.pageController
                                          .animateToPage(
                                        2,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeInOut,
                                      );
                                      controller.selectedMenu(2);
                                    },
                                    onHover: (value) {
                                      controller.setServiceHover();
                                    },
                                    child: Text(
                                      "Layanan Jasa",
                                      style: GoogleFonts.lato(
                                        fontSize:
                                            MediaQuery.of(context).size.width <
                                                    1000
                                                ? 14
                                                : 18,
                                        fontWeight: controller
                                                .isServiceHover.value
                                            ? FontWeight.w600
                                            : controller.selectedMenu.value == 2
                                                ? FontWeight.w600
                                                : FontWeight.w300,
                                        color: controller.isServiceHover.value
                                            ? Colors.blue[700]
                                            : controller.selectedMenu.value == 2
                                                ? Colors.blue[700]
                                                : Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width < 1000
                                            ? 10
                                            : 20,
                                  ),
                                  InkWell(
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    onTap: () async {
                                      await controller.pageController
                                          .animateToPage(
                                        3,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeInOut,
                                      );
                                      controller.selectedMenu(3);
                                    },
                                    onHover: (value) {
                                      controller.setProductHover();
                                    },
                                    child: Text(
                                      "Variasi Produk",
                                      style: GoogleFonts.lato(
                                        fontSize:
                                            MediaQuery.of(context).size.width <
                                                    1000
                                                ? 14
                                                : 18,
                                        fontWeight: controller
                                                .isProductHover.value
                                            ? FontWeight.w600
                                            : controller.selectedMenu.value == 3
                                                ? FontWeight.w600
                                                : FontWeight.w300,
                                        color: controller.isProductHover.value
                                            ? Colors.blue[700]
                                            : controller.selectedMenu.value == 3
                                                ? Colors.blue[700]
                                                : Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width < 1000
                                            ? 10
                                            : 20,
                                  ),
                                  InkWell(
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    onTap: () async {
                                      await controller.pageController
                                          .animateToPage(
                                        4,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeInOut,
                                      );

                                      controller.selectedMenu(4);
                                    },
                                    onHover: (value) {
                                      controller.setDocumentHover();
                                    },
                                    child: Text(
                                      "Dokumentasi",
                                      style: GoogleFonts.lato(
                                        fontSize:
                                            MediaQuery.of(context).size.width <
                                                    1000
                                                ? 14
                                                : 18,
                                        fontWeight: controller
                                                .isDocumentHover.value
                                            ? FontWeight.w600
                                            : controller.selectedMenu.value == 4
                                                ? FontWeight.w600
                                                : FontWeight.w300,
                                        color: controller.isDocumentHover.value
                                            ? Colors.blue[700]
                                            : controller.selectedMenu.value == 4
                                                ? Colors.blue[700]
                                                : Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              onHover: (value) {
                                controller.setIsFocus();
                              },
                              onTap: () {
                                // controller.setIsFocus();
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width < 1000
                                    ? 170
                                    : 200,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 25),
                                decoration: BoxDecoration(
                                  color: controller.isFocus.value
                                      ? Colors.blue[700]!
                                      : const Color.fromRGBO(176, 218, 255, 1),
                                  border: Border.all(
                                      width: 1.0, color: Colors.blue[700]!),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                                child: Text(
                                  "Customer Service",
                                  style: GoogleFonts.lato(
                                    fontSize:
                                        MediaQuery.of(context).size.width < 1000
                                            ? 12
                                            : 14,
                                    fontWeight: FontWeight.w600,
                                    color: controller.isFocus.value
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              SizedBox(width: MediaQuery.of(context).size.width * 0.05)
            ],
          ),
          body: PageView(
            allowImplicitScrolling: true,
            scrollDirection: Axis.vertical,
            controller: controller.pageController,
            onPageChanged: (value) {
              controller.onPageChange(value);
            },
            children: const [
              HomeView(),
              AboutView(),
              ServiceView(),
              ProductView(),
              DocumentationView(),
            ],
          ),
          bottomNavigationBar: Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            color: const Color(0xFFB0DAFF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "CV. NUSANTARA ENGINERING SOLUTION",
                  style: GoogleFonts.lato(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 20),
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue[900],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.blue,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        controller.instagramOpen("infoservicenusantara");
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Colors.red[900],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        controller.whatsappOpen("6282288384111");
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.green[700],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
