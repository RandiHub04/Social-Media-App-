import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userImage,
    this.userName,
    this.meetingTime,
    this.meetingDescription,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgEllipse5359x59);
    userName = userName ?? Rx("Syifa");
    meetingTime = meetingTime ?? Rx("19:00");
    meetingDescription = meetingDescription ?? Rx("Today, I meet you bud");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? userName;

  Rx<String>? meetingTime;

  Rx<String>? meetingDescription;

  Rx<String>? id;
}
