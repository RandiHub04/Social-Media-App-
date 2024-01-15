import 'package:randi_s_application5/core/app_export.dart';
import 'package:randi_s_application5/presentation/loading_screen/models/loading_model.dart';

/// A controller class for the LoadingScreen.
///
/// This class manages the state of the LoadingScreen, including the
/// current loadingModelObj
class LoadingController extends GetxController {
  Rx<LoadingModel> loadingModelObj = LoadingModel().obs;
}
