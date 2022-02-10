import 'package:get/get.dart';

import '../controllers/tab3_controller.dart';

class Tab3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Tab3Controller>(
      () => Tab3Controller(),
    );
  }
}
