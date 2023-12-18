import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_tempat_controller.dart';

class DetailTempatView extends GetView<DetailTempatController> {
  const DetailTempatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailTempatView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailTempatView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
