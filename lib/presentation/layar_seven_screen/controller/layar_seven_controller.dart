import 'package:randi_s_application5/core/app_export.dart';
import 'package:randi_s_application5/presentation/layar_seven_screen/models/layar_seven_model.dart';

/// A controller class for the LayarSevenScreen.
///
/// This class manages the state of the LayarSevenScreen, including the
/// current layarSevenModelObj
class LayarSevenController extends GetxController {
  Rx<LayarSevenModel> layarSevenModelObj = LayarSevenModel().obs;
}
