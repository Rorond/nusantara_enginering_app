import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:landing_page/core.dart';
import 'package:landing_page/module/home/models/location.dart';
import 'package:landing_page/shared/widgets/form/c_combobox.dart';

class CboLocation extends StatelessWidget {
  const CboLocation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return CustomCombobox<LocationModel>(
      label: 'Location',
      selectedValue: null,
      addButtonLabel: "Add New Category",
      items: controller.locations,
      onChanged: (value) {
        controller.locationController.text = value.toString();
        controller.update();
      },
    );
  }
}
