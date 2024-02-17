import 'package:landing_page/core.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AboutController());
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Center(
            child: Container(
              // width: 500,
              child: Lottie.asset(
                'assets/lottie/about.json',
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: Center(
            child: Container(
              // width: 500,
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
                  SizedBox(height: 10),
                  Card(
                    color: primaryColor.withOpacity(0.5),
                    child: Container(
                      padding: const EdgeInsets.all(24.0),
                      height: MediaQuery.of(context).size.height * 0.20,
                      child: TypeWriterText(
                        repeat: false,
                        duration: const Duration(milliseconds: 50),
                        text: Text(
                          controller.aboutContent.value,
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.03,
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
