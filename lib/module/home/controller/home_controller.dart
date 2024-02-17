import 'package:landing_page/core.dart';

class HomeController extends GetxController {
  HomeView? view;
  final TextEditingController kendalaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final isOrderFocus = RxBool(false);
  final double latitude = 37.7749;
  final double longitude = -122.4194;
  final locations = RxList<LocationModel>([
    LocationModel(id: 1, name: "Jakarta Pusat"),
    LocationModel(id: 2, name: "Jakarta Barat"),
    LocationModel(id: 3, name: "Jakarta Utara"),
    LocationModel(id: 4, name: "Jakarta Selatan"),
    LocationModel(id: 4, name: "Jakarta Timur"),
    LocationModel(id: 4, name: "Depok"),
    LocationModel(id: 4, name: "Bogor"),
    LocationModel(id: 4, name: "Bekasi"),
    LocationModel(id: 4, name: "Tangerang"),
  ]);

  final whatsappOnHover = RxBool(false);
  final instagramOnHover = RxBool(false);
  final gmailOnHover = RxBool(false);
  final mapOnhover = RxBool(false);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  setOrderFocus() {
    isOrderFocus.value = !isOrderFocus.value;
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

  sendToWhatsApp(phoneNumber, message) async {
    final formattedPhoneNumber =
        phoneNumber.replaceAll(new RegExp(r'[^\d]+'), '');

    final String encodedMessage = Uri.encodeComponent(message);

    final Uri whatsappUrl =
        Uri.parse("https://wa.me/$formattedPhoneNumber?text=$encodedMessage");

    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
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

  launchEmail(String email) async {
    String emailUrl = 'mailto:$email';
    final Uri emailLaunchUrl = Uri.parse(emailUrl);
    if (await canLaunchUrl(emailLaunchUrl)) {
      await launchUrl(emailLaunchUrl);
    } else {
      throw 'Could not launch $emailUrl';
    }
  }
}
