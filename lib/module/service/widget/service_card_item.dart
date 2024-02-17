import 'package:landing_page/core.dart';

class ServiceCardItem extends StatelessWidget {
  final void Function(bool value) onHover;
  final bool flag;

  const ServiceCardItem({super.key, required this.onHover, required this.flag});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: onHover,
      child: Card(
        color: flag ? primaryColor : Colors.green.shade100.withOpacity(0.5),
        child: Container(
          height: MediaQuery.of(context).size.width < 580
              ? 120
              : flag
                  ? 220
                  : 200,
          width: MediaQuery.of(context).size.width < 580
              ? 150
              : flag
                  ? 220
                  : 200,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                flag
                    ? 'assets/images/service_white.png'
                    : 'assets/images/service_primary.png',
                height: MediaQuery.of(context).size.width < 580
                    ? 70
                    : flag
                        ? 120
                        : 110,
              ),
              Text(
                "Electrical Maintenance",
                style: GoogleFonts.lato(
                  fontSize: MediaQuery.of(context).size.width < 580 ? 12 : 16,
                  fontWeight: FontWeight.w600,
                  color: flag ? Colors.white : primaryColor,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
