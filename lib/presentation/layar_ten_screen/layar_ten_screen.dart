import 'controller/layar_ten_controller.dart';
import 'package:flutter/material.dart';
import 'package:randi_s_application5/core/app_export.dart';
import 'package:randi_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:randi_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:randi_s_application5/widgets/app_bar/appbar_trailing_image.dart';
import 'package:randi_s_application5/widgets/app_bar/custom_app_bar.dart';

class LayarTenScreen extends GetWidget<LayarTenController> {
  const LayarTenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 37.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Opacity(
                              opacity: 0.8,
                              child: Text("msg_14_februari_2023".tr,
                                  style:
                                      CustomTextStyles.titleSmallLailaGray50))),
                      SizedBox(height: 16.v),
                      _buildSeventyOne(),
                      SizedBox(height: 25.v),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse5559x59,
                                height: 59.adaptSize,
                                width: 59.adaptSize,
                                radius: BorderRadius.circular(29.h),
                                margin: EdgeInsets.only(bottom: 21.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_alex".tr,
                                          style: theme.textTheme.titleSmall),
                                      SizedBox(height: 2.v),
                                      Opacity(
                                          opacity: 0.8,
                                          child: SizedBox(
                                              width: 169.h,
                                              child: Text(
                                                  "msg_malam_ini_adalah".tr,
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .labelLargeGray50)))
                                    ]))
                          ]),
                      SizedBox(height: 4.v),
                      Opacity(
                          opacity: 0.8,
                          child: Padding(
                              padding: EdgeInsets.only(left: 65.h),
                              child: Text("msg_lihat_38_komentar".tr,
                                  style:
                                      CustomTextStyles.labelLargeBluegray400))),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 87.v,
        leadingWidth: 69.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftGray5040x40,
            margin: EdgeInsets.only(left: 29.h, bottom: 26.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(
            text: "lbl_post".tr, margin: EdgeInsets.only(top: 38.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgBookmark,
              margin: EdgeInsets.only(left: 38.h, top: 40.v, right: 38.h))
        ]);
  }

  /// Section Widget
  Widget _buildSeventyOne() {
    return SizedBox(
        height: 295.v,
        width: 353.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle4163,
              height: 240.v,
              width: 353.h,
              radius: BorderRadius.circular(5.h),
              alignment: Alignment.topCenter),
          CustomImageView(
              imagePath: ImageConstant.imgSettingsGray50,
              height: 49.adaptSize,
              width: 49.adaptSize,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 15.v)),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 64.h, top: 271.v, right: 57.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgFavoriteGray50,
                            height: 21.v,
                            width: 20.h,
                            margin: EdgeInsets.only(top: 1.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgUserGray50,
                            height: 24.v,
                            width: 25.h),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeftGray50,
                            height: 23.adaptSize,
                            width: 23.adaptSize,
                            margin: EdgeInsets.only(top: 1.v))
                      ])))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
