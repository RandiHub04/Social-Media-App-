import '../../../core/app_export.dart';

/// This class is used in the [eightyfour_item_widget] screen.
class EightyfourItemModel {
  EightyfourItemModel({
    this.userImage,
    this.userName,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgEllipse49);
    userName = userName ?? Rx("Elisabert");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? userName;

  Rx<String>? id;
}
