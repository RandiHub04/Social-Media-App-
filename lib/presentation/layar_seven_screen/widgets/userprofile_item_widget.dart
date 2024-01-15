import '../controller/layar_seven_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:randi_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<LayarSevenController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 85.v,
        width: 342.h,
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 84.v,
                width: 338.h,
                decoration: BoxDecoration(
                  color: appTheme.gray800.withOpacity(0.34),
                  borderRadius: BorderRadius.circular(
                    12.h,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: userprofileItemModelObj.userImage!.value,
                      height: 59.adaptSize,
                      width: 59.adaptSize,
                      radius: BorderRadius.circular(
                        29.h,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 7.h,
                        top: 7.v,
                        bottom: 7.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Obx(
                                  () => Text(
                                    userprofileItemModelObj.userName!.value,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 3.v),
                                child: Obx(
                                  () => Text(
                                    userprofileItemModelObj.meetingTime!.value,
                                    style: CustomTextStyles.labelLargeGray600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.v),
                          Padding(
                            padding: EdgeInsets.only(right: 11.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(
                                  () => Text(
                                    userprofileItemModelObj
                                        .meetingDescription!.value,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                                Container(
                                  height: 9.adaptSize,
                                  width: 9.adaptSize,
                                  margin: EdgeInsets.only(
                                    top: 5.v,
                                    bottom: 4.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: appTheme.gray50,
                                    borderRadius: BorderRadius.circular(
                                      4.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
