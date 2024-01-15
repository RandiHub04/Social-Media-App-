import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [layar_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LayarSevenModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        userImage: ImageConstant.imgEllipse5359x59.obs,
        userName: "Syifa".obs,
        meetingTime: "19:00".obs,
        meetingDescription: "Today, I meet you bud".obs)
  ]);
}
