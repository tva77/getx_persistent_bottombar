import 'package:get/get.dart';

class Internal1Controller extends GetxController {
  var args;
  @override
  void onInit() {
    args = Get.arguments;
    print(args);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
