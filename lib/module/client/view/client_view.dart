import 'package:landing_page/core.dart';

class ClientView extends StatelessWidget {
  const ClientView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClientController>(
      init: ClientController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: primaryColor.withOpacity(0.7),
          body: SingleChildScrollView(
            controller: ScrollController(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Our Clients",
                    style: GoogleFonts.lato(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  MediaQuery.of(context).size.width < 580
                      ? SizedBox(height: 10)
                      : SizedBox(height: 30),
                  LayoutBuilder(
                    builder: (context, constraint) {
                      return Wrap(
                        children: List.generate(
                          controller.clients.length,
                          (index) {
                            var item = controller.clients[index];

                            var size = MediaQuery.of(context).size.width < 580
                                ? constraint.biggest.width / 4
                                : constraint.biggest.width / 8;

                            return Container(
                              height: size / 1.5,
                              width: size,
                              margin: MediaQuery.of(context).size.width < 580
                                  ? EdgeInsets.all(5)
                                  : EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/clients/${item['icon_string']}.png')),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    blurRadius: 24,
                                    offset: Offset(0, 11),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 30),
                  FooterView(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
