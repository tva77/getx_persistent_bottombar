import 'package:get/get.dart';

import '../controllers/tab1_controller.dart';

class Tab1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Tab1Controller>(
      () => Tab1Controller(),
    );
  }
}
