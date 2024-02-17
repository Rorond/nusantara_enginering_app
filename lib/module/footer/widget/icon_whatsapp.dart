import 'package:landing_page/core.dart';

class WhatsAppIcon extends StatelessWidget {
  final bool mobile;
  const WhatsAppIcon({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MainNavigationController>();
    return CustomIconButton(
      faIcon: FaIcon(
        FontAwesomeIcons.whatsapp,
        color: controller.whatsappOnHover.value
            ? primaryColor
            : Colors.white.withOpacity(0.5),
        size: mobile ? 30 : 50,
      ),
      onTap: () {
        controller.whatsappOpen("6282388453744");
      },
      onHover: (p0) {
        controller.setWhatsAppOnHover();
      },
    );
  }
}
