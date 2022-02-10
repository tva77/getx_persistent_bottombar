import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/internal1_controller.dart';

class Internal1View extends GetView<Internal1Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internal1View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Internal1View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
