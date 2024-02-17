import 'package:landing_page/core.dart';

class BtnOrder extends StatelessWidget {
  const BtnOrder({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Align(
        alignment: Alignment.center,
        child: Obx(
          () => InkWell(
            onHover: (value) {
              controller.setOrderFocus();
            },
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return FormOrder();
                },
              );
            },
            child: Container(
              height: MediaQuery.of(context).size.width < 1000 ? 50 : 60,
              width: 250,
              decoration: BoxDecoration(
                color: controller.isOrderFocus.value
                    ? Colors.white
                    : Color(0xFF094A45),
                borderRadius: const BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
              child: Center(
                child: Text(
                  "Order Now",
                  style: GoogleFonts.lato(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: controller.isOrderFocus.value
                        ? Color(0xFF094A45)
                        : Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
