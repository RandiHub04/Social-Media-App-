import 'package:randi_s_application5/core/app_export.dart';
import 'package:randi_s_application5/presentation/layar_ten_screen/models/layar_ten_model.dart';

/// A controller class for the LayarTenScreen.
///
/// This class manages the state of the LayarTenScreen, including the
/// current layarTenModelObj
class LayarTenController extends GetxController {
  Rx<LayarTenModel> layarTenModelObj = LayarTenModel().obs;
}
