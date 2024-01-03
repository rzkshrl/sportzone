import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../main_menu/dashboard/controllers/dashboard_controller.dart';
import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var dashboardC = Get.put(DashboardController());
    dashboardC.showTitle.value = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HistoryView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HistoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
