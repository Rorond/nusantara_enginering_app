import 'package:landing_page/core.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: Colors.black.withOpacity(0.1),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomContent(),
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
