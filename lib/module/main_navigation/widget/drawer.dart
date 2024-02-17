import 'package:landing_page/core.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MainNavigationController>();
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 150,
                  width: 150,
                ),
              ),
              Positioned(
                left: 230,
                child: InkWell(
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
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      border: Border.all(width: 1.0, color: primaryColor),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(100.0),
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.headset_mic_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              )
            ]),
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
                2,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
              controller.selectedMenu(2);
            },
          ),
          ListTile(
            title: const Text('Products'),
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
            title: const Text('Clients'),
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
        ],
      ),
    );
  }
}
