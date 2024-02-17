import 'package:landing_page/core.dart';

class CustomMenu extends StatelessWidget {
  const CustomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MainNavigationController>();
    return MediaQuery.of(context).size.width < 850
        ? Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer(); // Membuka endDrawer
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
                              await controller.pageController.animateToPage(
                                0,
                                duration: const Duration(milliseconds: 500),
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
                                    MediaQuery.of(context).size.width < 1000
                                        ? 14
                                        : 18,
                                fontWeight: controller.isHomeHover.value
                                    ? FontWeight.w600
                                    : controller.selectedMenu.value == 0
                                        ? FontWeight.w600
                                        : FontWeight.w300,
                                color: controller.isHomeHover.value
                                    ? primaryColor
                                    : controller.selectedMenu.value == 0
                                        ? primaryColor
                                        : Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width < 1000
                                ? 10
                                : 20,
                          ),
                          InkWell(
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onTap: () async {
                              await controller.pageController.animateToPage(
                                1,
                                duration: const Duration(milliseconds: 500),
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
                                fontSize:
                                    MediaQuery.of(context).size.width < 1000
                                        ? 14
                                        : 18,
                                fontWeight: controller.isAboutHover.value
                                    ? FontWeight.w600
                                    : controller.selectedMenu.value == 1
                                        ? FontWeight.w600
                                        : FontWeight.w300,
                                color: controller.isAboutHover.value
                                    ? primaryColor
                                    : controller.selectedMenu.value == 1
                                        ? primaryColor
                                        : Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width < 1000
                                ? 10
                                : 20,
                          ),
                          InkWell(
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onTap: () async {
                              await controller.pageController.animateToPage(
                                2,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                              controller.selectedMenu(2);
                            },
                            onHover: (value) {
                              controller.setServiceHover();
                            },
                            child: Text(
                              "Services",
                              style: GoogleFonts.lato(
                                fontSize:
                                    MediaQuery.of(context).size.width < 1000
                                        ? 14
                                        : 18,
                                fontWeight: controller.isServiceHover.value
                                    ? FontWeight.w600
                                    : controller.selectedMenu.value == 2
                                        ? FontWeight.w600
                                        : FontWeight.w300,
                                color: controller.isServiceHover.value
                                    ? primaryColor
                                    : controller.selectedMenu.value == 2
                                        ? primaryColor
                                        : Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width < 1000
                                ? 10
                                : 20,
                          ),
                          InkWell(
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onTap: () async {
                              await controller.pageController.animateToPage(
                                3,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                              controller.selectedMenu(3);
                            },
                            onHover: (value) {
                              controller.setProductHover();
                            },
                            child: Text(
                              "Products",
                              style: GoogleFonts.lato(
                                fontSize:
                                    MediaQuery.of(context).size.width < 1000
                                        ? 14
                                        : 18,
                                fontWeight: controller.isProductHover.value
                                    ? FontWeight.w600
                                    : controller.selectedMenu.value == 3
                                        ? FontWeight.w600
                                        : FontWeight.w300,
                                color: controller.isProductHover.value
                                    ? primaryColor
                                    : controller.selectedMenu.value == 3
                                        ? primaryColor
                                        : Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width < 1000
                                ? 10
                                : 20,
                          ),
                          InkWell(
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onTap: () async {
                              await controller.pageController.animateToPage(
                                4,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );

                              controller.selectedMenu(4);
                            },
                            onHover: (value) {
                              controller.setDocumentHover();
                            },
                            child: Text(
                              "Clients",
                              style: GoogleFonts.lato(
                                fontSize:
                                    MediaQuery.of(context).size.width < 1000
                                        ? 14
                                        : 18,
                                fontWeight: controller.isDocumentHover.value
                                    ? FontWeight.w600
                                    : controller.selectedMenu.value == 4
                                        ? FontWeight.w600
                                        : FontWeight.w300,
                                color: controller.isDocumentHover.value
                                    ? primaryColor
                                    : controller.selectedMenu.value == 4
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
                        controller.whatsappOpen('6282388453744');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width < 1000
                            ? 180
                            : 200,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 25),
                        margin: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.05),
                        decoration: BoxDecoration(
                          color: controller.isFocus.value
                              ? primaryColor
                              : Colors.white,
                          border: Border.all(width: 1.0, color: primaryColor),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(25.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.headset_mic_outlined,
                              color: controller.isFocus.value
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            SizedBox(width: 5),
                            Text(
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
  }
}
