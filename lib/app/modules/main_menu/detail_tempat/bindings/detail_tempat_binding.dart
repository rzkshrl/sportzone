import 'package:get/get.dart';

import '../controllers/detail_tempat_controller.dart';

class DetailTempatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailTempatController>(
      () => DetailTempatController(),
    );
  }
}
