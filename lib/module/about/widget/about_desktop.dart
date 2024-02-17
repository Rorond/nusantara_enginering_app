import 'package:landing_page/core.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AboutController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Center(
            child: Container(
              child: Lottie.asset(
                'assets/lottie/about.json',
              ),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "About Us...!",
                    style: GoogleFonts.lato(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      fontWeight: FontWeight.w900,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(height: 30),
                  Card(
                    color: Colors.green.shade100.withOpacity(0.5),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      padding: const EdgeInsets.all(24.0),
                      child: TypeWriterText(
                        repeat: false,
                        duration: const Duration(milliseconds: 50),
                        text: Text(
                          controller.aboutContent.value,
                          style: GoogleFonts.lato(
                            color: primaryColor,
                            fontSize: MediaQuery.of(context).size.width < 580
                                ? MediaQuery.of(context).size.height * 0.02
                                : MediaQuery.of(context).size.width * 0.02,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
