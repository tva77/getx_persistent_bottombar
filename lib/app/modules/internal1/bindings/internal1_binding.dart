import 'package:get/get.dart';

import '../controllers/internal1_controller.dart';

class Internal1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Internal1Controller>(
      () => Internal1Controller(),
    );
  }
}
