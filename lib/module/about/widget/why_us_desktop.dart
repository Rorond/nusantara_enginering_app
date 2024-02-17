import 'package:landing_page/core.dart';

class WhyUsDesktop extends StatelessWidget {
  const WhyUsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AboutController());
    return Center(
      child: Row(
        children: [
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
                SizedBox(height: 30),
                Card(
                  color: Colors.green.shade100.withOpacity(0.5),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: TypeWriterText(
                      repeat: false,
                      duration: Duration(milliseconds: 50),
                      text: Text(
                        controller.whyUsContent.value,
                        style: GoogleFonts.lato(
                          fontSize: MediaQuery.of(context).size.width < 580
                              ? MediaQuery.of(context).size.height * 0.02
                              : MediaQuery.of(context).size.width * 0.02,
                          fontWeight: FontWeight.w900,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                // width: 500,
                child: Lottie.asset(
                  'assets/lottie/why_us.json',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
