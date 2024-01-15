import '../controller/layar_ten_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LayarTenScreen.
///
/// This class ensures that the LayarTenController is created when the
/// LayarTenScreen is first loaded.
class LayarTenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LayarTenController());
  }
}
