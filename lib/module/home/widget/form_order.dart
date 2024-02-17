import 'package:landing_page/core.dart';

class FormOrder extends StatelessWidget {
  const FormOrder({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return AlertDialog(
      scrollable: true,
      title: const Text("Form Pemesanan"),
      actions: [
        Center(
          child: SizedBox(
            height: 50,
            width: 250,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
              ),
              onPressed: () async {
                String message =
                    "Form Pemesanan CV. NUSANTARA ENGINERING SOLUTION\n\nEmail : ${controller.emailController.text}\nNama : ${controller.nameController.text}\nLokasi : ${controller.locationController.text}\nKendala : ${controller.kendalaController.text}";
                await controller.sendToWhatsApp(
                  "6282388453744",
                  message,
                );
              },
              child: Text(
                "Kirim Ke WhatsApp",
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
      content: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.01),
        height: MediaQuery.of(context).size.height * 0.55,
        width: MediaQuery.of(context).size.width < 800
            ? MediaQuery.of(context).size.width * 0.8
            : MediaQuery.of(context).size.width * 0.45,
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              CustomTextbox(
                  controller: controller.emailController, label: "Email"),
              const SizedBox(height: 15),
              CustomTextbox(
                  controller: controller.nameController, label: "Nama"),
              const SizedBox(height: 15),
              const CboLocation(),
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Kendala",
                    style: GoogleFonts.lato(
                      fontSize: 16.0,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: TextFormField(
                  maxLines: 5,
                  controller: controller.kendalaController,
                  decoration: const InputDecoration(
                    // labelText: "Kendala",

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
