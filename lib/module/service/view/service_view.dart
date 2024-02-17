import 'package:landing_page/core.dart';

class ServiceView extends StatelessWidget {
  const ServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ServiceController>(
      init: ServiceController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: SingleChildScrollView(
                controller: ScrollController(),
                child: Column(
                  children: [
                    ServiceTitle(),
                    SizedBox(height: 30),
                    ServiceListItem(),
                    SizedBox(height: 30),
                    FooterView(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
