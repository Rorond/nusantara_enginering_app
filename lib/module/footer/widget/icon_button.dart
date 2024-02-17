import 'package:landing_page/core.dart';

class CustomIconButton extends StatelessWidget {
  final FaIcon faIcon;
  final void Function()? onTap;
  final void Function(bool)? onHover;
  const CustomIconButton({
    super.key,
    required this.faIcon,
    this.onTap,
    this.onHover,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      onHover: onHover,
      child: faIcon,
    );
  }
}
