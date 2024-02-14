// ignore_for_file: sort_child_properties_last

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
          endDrawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 150,
                    width: 150,
                  ),
                  decoration: const BoxDecoration(
                      // color: Color.fromRGBO(176, 218, 255, 1),
                      ),
                ),
                ListTile(
                  title: const Text('Home'),
                  onTap: () async {
                    Get.back();
                    await controller.pageController.animateToPage(
                      0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                    controller.selectedMenu(0);
                  },
                ),
                ListTile(
                  title: const Text('About'),
                  onTap: () async {
                    Get.back();
                    await controller.pageController.animateToPage(
                      1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );

                    controller.selectedMenu(1);
                  },
                ),
                ListTile(
                  title: const Text('Services'),
                  onTap: () async {
                    Get.back();
                    await controller.pageController.animateToPage(
                      3,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                    controller.selectedMenu(3);
                  },
                ),
                ListTile(
                  title: const Text('Variasi Produk'),
                  onTap: () async {
                    Get.back();
                    await controller.pageController.animateToPage(
                      4,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                    controller.selectedMenu(4);
                  },
                ),
                ListTile(
                  title: const Text('Documentation'),
                  onTap: () async {
                    Get.back();
                    await controller.pageController.animateToPage(
                      5,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                    controller.selectedMenu(5);
                  },
                ),
              ],
            ),
          ),
          appBar: AppBar(
            toolbarHeight: 65,
            backgroundColor: Colors.white,
            title: Container(
              margin: const EdgeInsets.all(5),
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                // color: Color.fromARGB(248, 202, 225, 248),
                borderRadius: BorderRadius.all(
                  Radius.circular(100.0),
                ),
              ),
              child: Image.asset(
                'assets/images/ico_logo.png',
                height: 60,
                width: 60,
              ),
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
                  ? Builder(
                      builder: (context) {
                        return IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () {
                            Scaffold.of(context)
                                .openEndDrawer(); // Membuka endDrawer
                          },
                        );
                      },
                    )
                  : Obx(
                      () {
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
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  1000
                                              ? 14
                                              : 18,
                                          fontWeight: controller
                                                  .isHomeHover.value
                                              ? FontWeight.w600
                                              : controller.selectedMenu.value ==
                                                      0
                                                  ? FontWeight.w600
                                                  : FontWeight.w300,
                                          color: controller.isHomeHover.value
                                              ? primaryColor
                                              : controller.selectedMenu.value ==
                                                      0
                                                  ? primaryColor
                                                  : Colors.black,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width <
                                              1000
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
                                        "About",
                                        style: GoogleFonts.lato(
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  1000
                                              ? 14
                                              : 18,
                                          fontWeight: controller
                                                  .isAboutHover.value
                                              ? FontWeight.w600
                                              : controller.selectedMenu.value ==
                                                      1
                                                  ? FontWeight.w600
                                                  : FontWeight.w300,
                                          color: controller.isAboutHover.value
                                              ? primaryColor
                                              : controller.selectedMenu.value ==
                                                      1
                                                  ? primaryColor
                                                  : Colors.black,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width <
                                              1000
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
                                        controller.setServiceHover();
                                      },
                                      child: Text(
                                        "Services",
                                        style: GoogleFonts.lato(
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  1000
                                              ? 14
                                              : 18,
                                          fontWeight: controller
                                                  .isServiceHover.value
                                              ? FontWeight.w600
                                              : controller.selectedMenu.value ==
                                                      3
                                                  ? FontWeight.w600
                                                  : FontWeight.w300,
                                          color: controller.isServiceHover.value
                                              ? primaryColor
                                              : controller.selectedMenu.value ==
                                                      3
                                                  ? primaryColor
                                                  : Colors.black,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width <
                                              1000
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
                                        controller.setProductHover();
                                      },
                                      child: Text(
                                        "Product",
                                        style: GoogleFonts.lato(
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  1000
                                              ? 14
                                              : 18,
                                          fontWeight: controller
                                                  .isProductHover.value
                                              ? FontWeight.w600
                                              : controller.selectedMenu.value ==
                                                      4
                                                  ? FontWeight.w600
                                                  : FontWeight.w300,
                                          color: controller.isProductHover.value
                                              ? primaryColor
                                              : controller.selectedMenu.value ==
                                                      4
                                                  ? primaryColor
                                                  : Colors.black,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width <
                                              1000
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
                                          5,
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.easeInOut,
                                        );

                                        controller.selectedMenu(5);
                                      },
                                      onHover: (value) {
                                        controller.setDocumentHover();
                                      },
                                      child: Text(
                                        "Documentation",
                                        style: GoogleFonts.lato(
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  1000
                                              ? 14
                                              : 18,
                                          fontWeight: controller
                                                  .isDocumentHover.value
                                              ? FontWeight.w600
                                              : controller.selectedMenu.value ==
                                                      5
                                                  ? FontWeight.w600
                                                  : FontWeight.w300,
                                          color: controller
                                                  .isDocumentHover.value
                                              ? primaryColor
                                              : controller.selectedMenu.value ==
                                                      5
                                                  ? primaryColor
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
                                  width:
                                      MediaQuery.of(context).size.width < 1000
                                          ? 170
                                          : 200,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 25),
                                  decoration: BoxDecoration(
                                    color: controller.isFocus.value
                                        ? primaryColor
                                        : Colors.white,
                                    border: Border.all(
                                        width: 1.0, color: primaryColor),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(25.0),
                                    ),
                                  ),
                                  child: Text(
                                    "Customer Service",
                                    style: GoogleFonts.lato(
                                      fontSize:
                                          MediaQuery.of(context).size.width <
                                                  1000
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
                      },
                    ),
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
            children: [
              HomeView(),
              AboutView(),
              WhyUsView(),
              ServiceView(),
              ProductView(),
              // LocationView(),
              DocumentationView(),
            ],
          ),
          bottomNavigationBar: Container(
            height: MediaQuery.of(context).size.width < 600 ? 40 : 60,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            color: primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "© 2024 Nusantara Engineering Solutions.",
                  style: GoogleFonts.lato(
                    fontSize:
                        MediaQuery.of(context).size.width < 600 ? 12.0 : 14.0,
                    fontWeight: MediaQuery.of(context).size.width < 600
                        ? FontWeight.w300
                        : FontWeight.w400,
                    color: Colors.white.withOpacity(0.5),
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 40,
                      width: 30,
                      child: IconButton(
                        onPressed: () {
                          controller.whatsappOpen("6282288384111");
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.white.withOpacity(0.5),
                          size: 25,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      height: 40,
                      width: 30,
                      child: IconButton(
                        onPressed: () {
                          controller.instagramOpen("infoservicenusantara");
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white.withOpacity(0.5),
                          size: 25,
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 30,
                      child: IconButton(
                        onPressed: () {
                          controller
                              .launchEmail('infodervicenusantara@gmail.com');
                        },
                        icon: Icon(
                          Icons.mail_outline,
                          color: Colors.white.withOpacity(0.5),
                          size: 25,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      height: 40,
                      width: 30,
                      child: IconButton(
                        onPressed: () {
                          controller.launchMaps();
                        },
                        icon: Icon(
                          Icons.location_on_outlined,
                          color: Colors.white.withOpacity(0.5),
                          size: 25,
                        ),
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
