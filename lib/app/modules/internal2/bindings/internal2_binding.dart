import 'package:get/get.dart';

import '../controllers/internal2_controller.dart';

class Internal2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Internal2Controller>(
      () => Internal2Controller(),
    );
  }
}
