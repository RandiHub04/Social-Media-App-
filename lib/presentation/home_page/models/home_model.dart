import '../../../core/app_export.dart';
import 'eightyfour_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<EightyfourItemModel>> eightyfourItemList = Rx([
    EightyfourItemModel(
        userImage: ImageConstant.imgEllipse49.obs, userName: "Elisabert".obs),
    EightyfourItemModel(userName: "Alex".obs),
    EightyfourItemModel(userName: "Theresia".obs),
    EightyfourItemModel(userName: "Syifa".obs),
    EightyfourItemModel(userName: "Ucup".obs),
    EightyfourItemModel(userName: "Reza".obs)
  ]);
}
