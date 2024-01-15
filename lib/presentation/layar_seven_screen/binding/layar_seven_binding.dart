import '../controller/layar_seven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LayarSevenScreen.
///
/// This class ensures that the LayarSevenController is created when the
/// LayarSevenScreen is first loaded.
class LayarSevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LayarSevenController());
  }
}
