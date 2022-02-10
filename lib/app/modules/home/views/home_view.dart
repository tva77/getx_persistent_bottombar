import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_persistent_bottombar/app/modules/internal1/views/internal1_view.dart';
import 'package:getx_persistent_bottombar/app/modules/internal2/views/internal2_view.dart';
import 'package:getx_persistent_bottombar/app/modules/tab1/views/tab1_view.dart';
import 'package:getx_persistent_bottombar/app/modules/tab2/views/tab2_view.dart';
import 'package:getx_persistent_bottombar/app/modules/tab3/views/tab3_view.dart';
import 'package:getx_persistent_bottombar/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              Navigator(
                key: Get.nestedKey(0),
                // observers: [GetObserver((_) {}, Get.routing)],
                // initialRoute: Routes.TAB1,
                onGenerateRoute: (RouteSettings settings) {
                  WidgetBuilder builder;
                  print(settings);
                  switch (settings.name) {
                    case Routes.INTERNAL1:
                      builder = (_) => Internal1View();
                      break;
                    case Routes.INTERNAL2:
                      builder = (_) => Internal2View();
                      break;
                    default:
                      builder = (_) => Tab1View();
                    // throw Exception('Invalid route: ${settings.name}');
                  }
                  return MaterialPageRoute<void>(
                    builder: builder,
                    settings: settings,
                  );
                },
              ),
              Tab2View(),
              Tab3View()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          items: [
            BottomNavigationBarItem(label: "Tab1", icon: Icon(Icons.ac_unit)),
            BottomNavigationBarItem(label: "Tab2", icon: Icon(Icons.update)),
            BottomNavigationBarItem(label: "Tab3", icon: Icon(Icons.settings)),
          ],
        ),
      );
    });
  }
}
