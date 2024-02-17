import 'package:landing_page/core.dart';

class CustomContent extends StatelessWidget {
  const CustomContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background.jpeg'),
            fit: BoxFit.cover),
      ),
      child: Container(
        color: Colors.black.withOpacity(0.3),
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nusantara Engineering Solution",
              style: GoogleFonts.lato(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                fontWeight: FontWeight.bold,
                color: Color(0xFF094A45),
              ),
            ),
            TypeWriterText(
              repeat: true,
              duration: const Duration(milliseconds: 250),
              text: Text(
                'MAKE MORE HAPPEN..',
                style: GoogleFonts.lato(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 50),
            BtnOrder(),
          ],
        ),
      ),
    );
  }
}
