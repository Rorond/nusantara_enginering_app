import 'package:landing_page/core.dart';

class InstagramIcon extends StatelessWidget {
  final bool mobile;
  const InstagramIcon({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MainNavigationController>();
    return CustomIconButton(
      faIcon: FaIcon(
        FontAwesomeIcons.instagram,
        color: controller.instagramOnHover.value
            ? primaryColor
            : Colors.white.withOpacity(0.5),
        size: mobile ? 30 : 50,
      ),
      onTap: () {
        controller.instagramOpen("infoservicenusantara");
      },
      onHover: (p0) {
        controller.setInstagramOnHover();
      },
    );
  }
}
