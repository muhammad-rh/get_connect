import 'package:get/get.dart';
import 'package:get_connect/controllers.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Controllers>(() => Controllers());
  }
}
