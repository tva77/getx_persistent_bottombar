import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/internal1/bindings/internal1_binding.dart';
import '../modules/internal1/views/internal1_view.dart';
import '../modules/internal2/bindings/internal2_binding.dart';
import '../modules/internal2/views/internal2_view.dart';
import '../modules/tab1/bindings/tab1_binding.dart';
import '../modules/tab1/views/tab1_view.dart';
import '../modules/tab2/bindings/tab2_binding.dart';
import '../modules/tab2/views/tab2_view.dart';
import '../modules/tab3/bindings/tab3_binding.dart';
import '../modules/tab3/views/tab3_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: _Paths.HOME,
          page: () => HomeView(),
          binding: HomeBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.TAB1,
      page: () => Tab1View(),
      binding: Tab1Binding(),
    ),
    GetPage(
      name: _Paths.TAB2,
      page: () => Tab2View(),
      binding: Tab2Binding(),
    ),
    GetPage(
      name: _Paths.TAB3,
      page: () => Tab3View(),
      binding: Tab3Binding(),
    ),
    GetPage(
      name: _Paths.INTERNAL1,
      page: () => Internal1View(),
      binding: Internal1Binding(),
    ),
    GetPage(
      name: _Paths.INTERNAL2,
      page: () => Internal2View(),
      binding: Internal2Binding(),
    ),
  ];
}
