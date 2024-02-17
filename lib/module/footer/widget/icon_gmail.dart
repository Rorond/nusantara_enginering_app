import 'package:landing_page/core.dart';

class GmailIcon extends StatelessWidget {
  final bool mobile;
  const GmailIcon({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MainNavigationController>();
    return CustomIconButton(
      faIcon: FaIcon(
        FontAwesomeIcons.envelope,
        color: controller.gmailOnHover.value
            ? primaryColor
            : Colors.white.withOpacity(0.5),
        size: mobile ? 30 : 50,
      ),
      onTap: () {
        controller.launchGmail('infodervicenusantara@gmail.com');
      },
      onHover: (p0) {
        controller.setGmailOnHover();
      },
    );
  }
}
