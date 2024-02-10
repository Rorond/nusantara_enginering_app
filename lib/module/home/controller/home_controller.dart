import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:landing_page/module/home/models/location.dart';
import 'package:url_launcher/url_launcher.dart';
import '../view/home_view.dart';

class HomeController extends GetxController {
  HomeView? view;
  final TextEditingController kendalaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final isOrderFocus = RxBool(false);
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
}
