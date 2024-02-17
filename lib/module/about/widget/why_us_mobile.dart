import 'package:landing_page/core.dart';

class WhyUsMobile extends StatelessWidget {
  const WhyUsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AboutController>();
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                child: Lottie.asset(
                  'assets/lottie/why_us.json',
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Column(
              children: [
                Text(
                  "Why Us...?",
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
                    height: MediaQuery.of(context).size.height * 0.20,
                    padding: EdgeInsets.only(
                        bottom: 0, top: 15, left: 15, right: 15),
                    child: TypeWriterText(
                      repeat: false,
                      duration: Duration(milliseconds: 50),
                      text: Text(
                        controller.whyUsContent.value,
                        style: GoogleFonts.lato(
                          fontSize: MediaQuery.of(context).size.width < 580
                              ? MediaQuery.of(context).size.height * 0.02
                              : MediaQuery.of(context).size.width * 0.02,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
