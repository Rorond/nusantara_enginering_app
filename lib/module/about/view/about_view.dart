import 'package:landing_page/core.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AboutController>(
      init: AboutController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SingleChildScrollView(
            controller: ScrollController(),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  padding:
                      EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.05),
                  child: Center(
                    child: MediaQuery.sizeOf(context).width < 580
                        ? AboutMobile()
                        : AboutDesktop(),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  height: MediaQuery.of(context).size.height,
                  child: MediaQuery.of(context).size.width < 580
                      ? WhyUsMobile()
                      : WhyUsDesktop(),
                ),
                FooterView(),
              ],
            ),
          ),
        );
      },
    );
  }
}
