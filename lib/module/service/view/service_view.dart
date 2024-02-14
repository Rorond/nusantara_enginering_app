import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/service_controller.dart';
import 'package:landing_page/core.dart';
import 'package:get/get.dart';

class ServiceView extends StatelessWidget {
  const ServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ServiceController>(
      init: ServiceController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: Obx(
            () => Container(
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Our Services",
                        style: GoogleFonts.lato(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                          fontWeight: FontWeight.w900,
                          color: primaryColor,
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05),
                        child: Wrap(
                          spacing: MediaQuery.of(context).size.width < 580
                              ? 5.0
                              : 20.0,
                          runSpacing: MediaQuery.of(context).size.width < 580
                              ? 5.0
                              : 20.0,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {},
                              onHover: (value) {
                                controller.setElectricOnHover();
                              },
                              child: Card(
                                color: controller.electricMaintanance.value
                                    ? primaryColor
                                    : Colors.green.shade100.withOpacity(0.5),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.width < 580
                                          ? 120
                                          : controller.electricMaintanance.value
                                              ? 220
                                              : 200,
                                  width: MediaQuery.of(context).size.width < 580
                                      ? 150
                                      : controller.electricMaintanance.value
                                          ? 220
                                          : 200,
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        controller.electricMaintanance.value
                                            ? 'assets/images/service_white.png'
                                            : 'assets/images/service_primary.png',
                                        height:
                                            MediaQuery.of(context).size.width <
                                                    580
                                                ? 70
                                                : controller.electricMaintanance
                                                        .value
                                                    ? 120
                                                    : 110,
                                      ),
                                      Text(
                                        "Electrical Maintenance",
                                        style: GoogleFonts.lato(
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  580
                                              ? 12
                                              : 16,
                                          fontWeight: FontWeight.w600,
                                          color: controller
                                                  .electricMaintanance.value
                                              ? Colors.white
                                              : primaryColor,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {},
                              onHover: (value) {
                                controller.setContractorOnHover();
                              },
                              child: Card(
                                color: controller.contractor.value
                                    ? primaryColor
                                    : Colors.green.shade100.withOpacity(0.5),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.width < 580
                                          ? 120
                                          : controller.contractor.value
                                              ? 220
                                              : 200,
                                  width: MediaQuery.of(context).size.width < 580
                                      ? 150
                                      : controller.contractor.value
                                          ? 220
                                          : 200,
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        controller.contractor.value
                                            ? 'assets/images/service_white.png'
                                            : 'assets/images/service_primary.png',
                                        height:
                                            MediaQuery.of(context).size.width <
                                                    580
                                                ? 70
                                                : controller.contractor.value
                                                    ? 120
                                                    : 110,
                                      ),
                                      Text(
                                        "HVAC Contractor",
                                        style: GoogleFonts.lato(
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  580
                                              ? 12
                                              : 16,
                                          fontWeight: FontWeight.w600,
                                          color: controller.contractor.value
                                              ? Colors.white
                                              : primaryColor,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {},
                              onHover: (value) {
                                controller.setMepProjectManagementOnHover();
                              },
                              child: Card(
                                color: controller.mepProjectManagement.value
                                    ? primaryColor
                                    : Colors.green.shade100.withOpacity(0.5),
                                child: Container(
                                  height: MediaQuery.of(context).size.width <
                                          580
                                      ? 120
                                      : controller.mepProjectManagement.value
                                          ? 220
                                          : 200,
                                  width: MediaQuery.of(context).size.width < 580
                                      ? 150
                                      : controller.mepProjectManagement.value
                                          ? 220
                                          : 200,
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        controller.mepProjectManagement.value
                                            ? 'assets/images/service_white.png'
                                            : 'assets/images/service_primary.png',
                                        height:
                                            MediaQuery.of(context).size.width <
                                                    580
                                                ? 70
                                                : controller
                                                        .mepProjectManagement
                                                        .value
                                                    ? 120
                                                    : 110,
                                      ),
                                      Text(
                                        "MEP Project Management",
                                        style: GoogleFonts.lato(
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  580
                                              ? 12
                                              : 16,
                                          fontWeight: FontWeight.w600,
                                          color: controller
                                                  .mepProjectManagement.value
                                              ? Colors.white
                                              : primaryColor,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {},
                              onHover: (value) {
                                controller.setMakingElectricalPanelOnHover();
                              },
                              child: Card(
                                color: controller.makingElectricalPanel.value
                                    ? primaryColor
                                    : Colors.green.shade100.withOpacity(0.5),
                                child: Container(
                                  height: MediaQuery.of(context).size.width <
                                          580
                                      ? 120
                                      : controller.makingElectricalPanel.value
                                          ? 220
                                          : 200,
                                  width: MediaQuery.of(context).size.width < 580
                                      ? 150
                                      : controller.makingElectricalPanel.value
                                          ? 220
                                          : 200,
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        controller.makingElectricalPanel.value
                                            ? 'assets/images/service_white.png'
                                            : 'assets/images/service_primary.png',
                                        height:
                                            MediaQuery.of(context).size.width <
                                                    580
                                                ? 70
                                                : controller
                                                        .makingElectricalPanel
                                                        .value
                                                    ? 120
                                                    : 110,
                                      ),
                                      Text(
                                        "Making Electrical Panels",
                                        style: GoogleFonts.lato(
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  580
                                              ? 12
                                              : 16,
                                          fontWeight: FontWeight.w600,
                                          color: controller
                                                  .makingElectricalPanel.value
                                              ? Colors.white
                                              : primaryColor,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {},
                              onHover: (value) {
                                controller.setTradeSupplierOnHover();
                              },
                              child: Card(
                                color: controller.tradeSupplier.value
                                    ? primaryColor
                                    : Colors.green.shade100.withOpacity(0.5),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.width < 580
                                          ? 120
                                          : controller.tradeSupplier.value
                                              ? 220
                                              : 200,
                                  width: MediaQuery.of(context).size.width < 580
                                      ? 150
                                      : controller.tradeSupplier.value
                                          ? 220
                                          : 200,
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        controller.tradeSupplier.value
                                            ? 'assets/images/service_white.png'
                                            : 'assets/images/service_primary.png',
                                        height:
                                            MediaQuery.of(context).size.width <
                                                    580
                                                ? 70
                                                : controller.tradeSupplier.value
                                                    ? 120
                                                    : 110,
                                      ),
                                      Text(
                                        "General Trade & Supplier",
                                        style: GoogleFonts.lato(
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  580
                                              ? 12
                                              : 16,
                                          fontWeight: FontWeight.w600,
                                          color: controller.tradeSupplier.value
                                              ? Colors.white
                                              : primaryColor,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {},
                              onHover: (value) {
                                controller.setServiceAcOnHover();
                              },
                              child: Card(
                                color: controller.serviceAc.value
                                    ? primaryColor
                                    : Colors.green.shade100.withOpacity(0.5),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.width < 580
                                          ? 120
                                          : controller.serviceAc.value
                                              ? 220
                                              : 200,
                                  width: MediaQuery.of(context).size.width < 580
                                      ? 150
                                      : controller.serviceAc.value
                                          ? 220
                                          : 200,
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        controller.serviceAc.value
                                            ? 'assets/images/service_white.png'
                                            : 'assets/images/service_primary.png',
                                        height:
                                            MediaQuery.of(context).size.width <
                                                    580
                                                ? 70
                                                : controller.serviceAc.value
                                                    ? 120
                                                    : 110,
                                      ),
                                      Text(
                                        "Service & Maintenance AC",
                                        style: GoogleFonts.lato(
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  580
                                              ? 12
                                              : 16,
                                          fontWeight: FontWeight.w600,
                                          color: controller.serviceAc.value
                                              ? Colors.white
                                              : primaryColor,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {},
                              onHover: (value) {
                                controller.setEpcOnHover();
                              },
                              child: Card(
                                color: controller.epc.value
                                    ? primaryColor
                                    : Colors.green.shade100.withOpacity(0.5),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.width < 580
                                          ? 120
                                          : controller.epc.value
                                              ? 220
                                              : 200,
                                  width: MediaQuery.of(context).size.width < 580
                                      ? 150
                                      : controller.epc.value
                                          ? 220
                                          : 200,
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        controller.epc.value
                                            ? 'assets/images/service_white.png'
                                            : 'assets/images/service_primary.png',
                                        height:
                                            MediaQuery.of(context).size.width <
                                                    580
                                                ? 70
                                                : controller.epc.value
                                                    ? 120
                                                    : 110,
                                      ),
                                      Text(
                                        "EPC",
                                        style: GoogleFonts.lato(
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  580
                                              ? 12
                                              : 16,
                                          fontWeight: FontWeight.w600,
                                          color: controller.epc.value
                                              ? Colors.white
                                              : primaryColor,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ),
        );
      },
    );
  }
}
