import 'package:landing_page/core.dart';

class MainNavigationController extends GetxController
    with GetSingleTickerProviderStateMixin {
  MainNavigationView? view;
  final double latitude = 37.7749;
  final double longitude = -122.4194;
  final isFocus = RxBool(false);
  late TabController tabController;
  final PageController pageController = PageController(initialPage: 0);
  final tabs = RxList<Tab>([]);
  final pageViews = RxList<Widget>([]);
  final menus = RxList<Widget>([]);
  final selectedMenu = RxInt(0);
  final isHomeHover = RxBool(false);
  final isAboutHover = RxBool(false);
  final isServiceHover = RxBool(false);
  final isProductHover = RxBool(false);
  final isDocumentHover = RxBool(false);
  final menuString = RxList<String>(
    [
      "Home",
      "Tentang Kami",
      "Layanan Jasa",
      "Variasi Produk",
      "Dokumentasi",
    ],
  );

  final whatsappOnHover = RxBool(false);
  final instagramOnHover = RxBool(false);
  final gmailOnHover = RxBool(false);
  final mapOnhover = RxBool(false);

  @override
  void onInit() async {
    super.onInit();
    tabController = TabController(vsync: this, length: 3);
    await setTab();
    // await setMenu(Get.context!);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  setIsFocus() {
    isFocus.value = !isFocus.value;
    update();
  }

  setHomeHover() {
    isHomeHover.value = !isHomeHover.value;
    update();
  }

  setAboutHover() {
    isAboutHover.value = !isAboutHover.value;
    update();
  }

  setServiceHover() {
    isServiceHover.value = !isServiceHover.value;
    update();
  }

  setProductHover() {
    isProductHover.value = !isProductHover.value;
    update();
  }

  setDocumentHover() {
    isDocumentHover.value = !isDocumentHover.value;
    update();
  }

  setSelectedMenu(int index) {
    selectedMenu.value = index;
    update();
  }

  setWhatsAppOnHover() {
    whatsappOnHover.value = !whatsappOnHover.value;
    update();
  }

  setInstagramOnHover() {
    instagramOnHover.value = !instagramOnHover.value;
    update();
  }

  setGmailOnHover() {
    gmailOnHover.value = !gmailOnHover.value;
    update();
  }

  setMapOnHover() {
    mapOnhover.value = !mapOnhover.value;
    update();
  }

  onPageChange(index) {
    if (index == 0) {
      isHomeHover.value = true;
      isAboutHover.value = false;
      isServiceHover.value = false;
      isProductHover.value = false;
      isDocumentHover.value = false;
      selectedMenu.value = index;
    } else if (index == 1) {
      isHomeHover.value = false;
      isAboutHover.value = true;
      isServiceHover.value = false;
      isProductHover.value = false;
      isDocumentHover.value = false;
      selectedMenu.value = index;
    } else if (index == 2) {
      isHomeHover.value = false;
      isAboutHover.value = false;
      isServiceHover.value = true;
      isProductHover.value = false;
      isDocumentHover.value = false;
      selectedMenu.value = index;
    } else if (index == 3) {
      isHomeHover.value = false;
      isAboutHover.value = false;
      isServiceHover.value = false;
      isProductHover.value = true;
      isDocumentHover.value = false;
      selectedMenu.value = index;
    } else if (index == 4) {
      isHomeHover.value = false;
      isAboutHover.value = false;
      isServiceHover.value = false;
      isProductHover.value = false;
      isDocumentHover.value = true;
      selectedMenu.value = index;
    }
    update();
  }

  setTab() {
    tabs.value = [];
    pageViews.value = [];

    tabs.add(const Tab(text: "Home"));
    tabs.add(const Tab(text: "About"));
    tabs.add(const Tab(text: "Contact"));

    pageViews.add(Container(height: 400, color: Colors.blue[700]));
    pageViews.add(Container(height: 400, color: Colors.red[700]));
    pageViews.add(Container(height: 400, color: Colors.yellow[700]));

    update();
  }

  setMenu(context) {
    if (menuString.isNotEmpty) {
      menus.value = [];
      for (var i = 0; i < menuString.length; i++) {
        menus.add(
          Row(
            children: [
              InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () async {
                  await pageController.animateToPage(
                    0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );

                  selectedMenu(0);
                },
                child: Text(
                  menuString[i],
                  style: GoogleFonts.lato(
                    fontSize:
                        MediaQuery.of(context).size.width < 1000 ? 14 : 18,
                    fontWeight: selectedMenu.value == 0
                        ? FontWeight.w600
                        : FontWeight.w300,
                    color: selectedMenu.value == 0
                        ? Colors.blue[700]
                        : Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        );
      }
    }
    update();
  }

  whatsappOpen(String phoneNumber) async {
    final formattedPhoneNumber =
        phoneNumber.replaceAll(new RegExp(r'[^\d]+'), '');

    final Uri whatsappUrl = Uri.parse("https://wa.me/$formattedPhoneNumber");

    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }

  instagramOpen(String username) async {
    final Uri instagramUrl = Uri.parse("https://instagram.com/$username");

    if (await canLaunchUrl(instagramUrl)) {
      await launchUrl(instagramUrl);
    } else {
      throw 'Could not launch $instagramUrl';
    }
  }

  launchMaps() async {
    final Uri googleMapsUrl = Uri.parse(
        "https://www.google.com/maps/place/Belantara+Heritage+Coffeeshop/@-6.3574775,106.8335584,17z/data=!3m1!4b1!4m6!3m5!1s0x2e69ef5fe26dfae7:0x35722cf0b77cf213!8m2!3d-6.3574775!4d106.8335584!16s%2Fg%2F11l2vxrvzk?entry=ttu");

    if (await canLaunchUrl(googleMapsUrl)) {
      await launchUrl(googleMapsUrl);
    } else {
      throw 'Could not launch $googleMapsUrl';
    }
  }

  launchGmail(String email) async {
    String emailUrl = 'mailto:$email';
    final Uri emailLaunchUrl = Uri.parse(emailUrl);
    if (await canLaunchUrl(emailLaunchUrl)) {
      await launchUrl(emailLaunchUrl);
    } else {
      throw 'Could not launch $emailUrl';
    }
  }
}
