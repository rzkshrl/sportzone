import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_olahraga_controller.dart';

class DetailOlahragaView extends GetView<DetailOlahragaController> {
  const DetailOlahragaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailOlahragaView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailOlahragaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
