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
                // initialRoute: Routes.TAB1,
                onGenerateRoute: (RouteSettings settings) {
                  var route;
                  var page;
                  print('settings = $settings');
                  switch (settings.name) {
                    case Routes.INTERNAL1:
                      route = Routes.INTERNAL1;
                      page = Internal1View(
                        args: settings.arguments,
                      );
                      break;
                    case Routes.INTERNAL2:
                      route = Routes.INTERNAL2;
                      page = Internal2View(
                        args: settings.arguments,
                      );
                      break;
                    default:
                      route = Routes.TAB1;
                      page = Tab1View();
                  }

                  return GetPageRoute(
                    routeName: route,
                    page: () => page,
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
