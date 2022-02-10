import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_persistent_bottombar/app/modules/tab1/views/tab1_view.dart';
import 'package:getx_persistent_bottombar/app/modules/tab2/views/tab2_view.dart';
import 'package:getx_persistent_bottombar/app/modules/tab3/views/tab3_view.dart';

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
              Tab1View(),
              Tab2View(),
              Tab3View(),
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
