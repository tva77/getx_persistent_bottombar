import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_persistent_bottombar/app/modules/internal1/views/internal1_view.dart';
import 'package:getx_persistent_bottombar/app/routes/app_pages.dart';

import '../controllers/tab1_controller.dart';

class Tab1View extends GetView<Tab1Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab1View'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Tab1View is working',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () => Get.to(
                () => Internal1View(
                  args: {"teste": "123"},
                ),
                id: 0,
              ),
              child: Text("internal 1"),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(
                Routes.INTERNAL2,
                id: 0,
                arguments: {"test2": "456"},
              ),
              child: Text("internal 2"),
            ),
          ],
        ),
      ),
    );
  }
}
