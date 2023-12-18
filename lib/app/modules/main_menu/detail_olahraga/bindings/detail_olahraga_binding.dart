import 'package:get/get.dart';

import '../controllers/detail_olahraga_controller.dart';

class DetailOlahragaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailOlahragaController>(
      () => DetailOlahragaController(),
    );
  }
}
