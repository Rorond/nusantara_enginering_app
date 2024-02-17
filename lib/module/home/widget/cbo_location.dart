import 'package:landing_page/core.dart';

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
