import 'package:get/get.dart';
import '../view/service_view.dart';

class ServiceController extends GetxController {
  ServiceView? view;

  final electricMaintanance = RxBool(false);
  final contractor = RxBool(false);
  final mepProjectManagement = RxBool(false);
  final makingElectricalPanel = RxBool(false);
  final tradeSupplier = RxBool(false);
  final serviceAc = RxBool(false);
  final epc = RxBool(false);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  setElectricOnHover() {
    electricMaintanance.value = !electricMaintanance.value;
    update();
  }

  setContractorOnHover() {
    contractor.value = !contractor.value;
    update();
  }

  setMepProjectManagementOnHover() {
    mepProjectManagement.value = !mepProjectManagement.value;
    update();
  }

  setMakingElectricalPanelOnHover() {
    makingElectricalPanel.value = !makingElectricalPanel.value;
    update();
  }

  setTradeSupplierOnHover() {
    tradeSupplier.value = !tradeSupplier.value;
    update();
  }

  setServiceAcOnHover() {
    serviceAc.value = !serviceAc.value;
    update();
  }

  setEpcOnHover() {
    epc.value = !epc.value;
    update();
  }
}
