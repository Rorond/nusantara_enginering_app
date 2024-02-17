import 'package:landing_page/core.dart';

class MapIcon extends StatelessWidget {
  final bool mobile;
  const MapIcon({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MainNavigationController>();
    return CustomIconButton(
      faIcon: FaIcon(
        FontAwesomeIcons.locationDot,
        color: controller.mapOnhover.value
            ? primaryColor
            : Colors.white.withOpacity(0.5),
        size: mobile ? 30 : 50,
      ),
      onTap: () {
        controller.launchMaps();
      },
      onHover: (p0) {
        controller.setMapOnHover();
      },
    );
  }
}
