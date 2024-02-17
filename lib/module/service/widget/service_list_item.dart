import 'package:landing_page/core.dart';

class ServiceListItem extends StatelessWidget {
  const ServiceListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ServiceController());
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Wrap(
        spacing: MediaQuery.of(context).size.width < 580 ? 5.0 : 20.0,
        runSpacing: MediaQuery.of(context).size.width < 580 ? 5.0 : 20.0,
        children: [
          ServiceCardItem(
            onHover: (value) {
              controller.setElectricOnHover();
            },
            flag: controller.electricMaintanance.value,
          ),
          ServiceCardItem(
            onHover: (value) {
              controller.setContractorOnHover();
            },
            flag: controller.contractor.value,
          ),
          ServiceCardItem(
            onHover: (value) {
              controller.setMepProjectManagementOnHover();
            },
            flag: controller.mepProjectManagement.value,
          ),
          ServiceCardItem(
            onHover: (value) {
              controller.setMakingElectricalPanelOnHover();
            },
            flag: controller.makingElectricalPanel.value,
          ),
          ServiceCardItem(
            onHover: (value) {
              controller.setTradeSupplierOnHover();
            },
            flag: controller.tradeSupplier.value,
          ),
          ServiceCardItem(
            onHover: (value) {
              controller.setServiceAcOnHover();
            },
            flag: controller.serviceAc.value,
          ),
          ServiceCardItem(
            onHover: (value) {
              controller.setEpcOnHover();
            },
            flag: controller.epc.value,
          ),
        ],
      ),
    );
  }
}
