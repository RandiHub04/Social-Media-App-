import '../layar_seven_screen/widgets/userprofile_item_widget.dart';
import 'controller/layar_seven_controller.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:randi_s_application5/core/app_export.dart';
import 'package:randi_s_application5/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:randi_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:randi_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:randi_s_application5/widgets/custom_icon_button.dart';

class LayarSevenScreen extends GetWidget<LayarSevenController> {
  const LayarSevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 9.v),
                  _buildTwentyTwo(),
                  SizedBox(height: 14.v),
                  SizedBox(
                      height: 680.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        _buildUserProfile(),
                        _buildFortySix(),
                        _buildThumbsUp(),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                height: 68.v,
                                width: 88.h,
                                margin: EdgeInsets.only(bottom: 54.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 17.h, vertical: 6.v),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            fs.Svg(ImageConstant.imgGroup104),
                                        fit: BoxFit.cover)),
                                child: CustomIconButton(
                                    height: 52.v,
                                    width: 54.h,
                                    padding: EdgeInsets.all(10.h),
                                    decoration: IconButtonStyleHelper
                                        .gradientTealAToBlueGray,
                                    alignment: Alignment.topCenter,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgCamera))))
                      ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 74.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftGray5044x46,
            margin: EdgeInsets.only(left: 28.h, top: 6.v, bottom: 6.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_chat".tr));
  }

  /// Section Widget
  Widget _buildTwentyTwo() {
    return Padding(
        padding: EdgeInsets.only(left: 35.h, right: 23.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("lbl_good_morning".tr, style: theme.textTheme.titleMedium),
                Text("lbl_budi".tr,
                    style: CustomTextStyles.headlineSmallLeelawadeeUITealA200)
              ]),
              Spacer(),
              Container(
                  height: 37.v,
                  width: 54.h,
                  margin: EdgeInsets.only(bottom: 19.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.h, vertical: 6.v),
                  decoration: AppDecoration.fillBluegray100
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder17),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgRewind,
                      height: 24.v,
                      width: 25.h,
                      alignment: Alignment.topCenter)),
              Container(
                  height: 37.v,
                  width: 54.h,
                  margin: EdgeInsets.only(left: 28.h, bottom: 19.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 6.v),
                  decoration: AppDecoration.fillBluegray100
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder17),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgMegaphone,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.topCenter))
            ]));
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 28.h, right: 25.h, bottom: 141.v),
            child: Obx(() => ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 1.v);
                },
                itemCount: controller
                    .layarSevenModelObj.value.userprofileItemList.value.length,
                itemBuilder: (context, index) {
                  UserprofileItemModel model = controller.layarSevenModelObj
                      .value.userprofileItemList.value[index];
                  return UserprofileItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildFortySix() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.fromLTRB(30.h, 546.v, 25.h, 50.v),
            padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 13.v),
            decoration: AppDecoration.fillGray800
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse68,
                  height: 58.v,
                  width: 59.h,
                  radius: BorderRadius.circular(29.h)),
              Expanded(
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 9.h, top: 7.v, bottom: 7.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 3.v),
                                      child: Text("lbl_selvy".tr,
                                          style: theme.textTheme.titleSmall)),
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 4.v),
                                      child: Text("lbl_08_00".tr,
                                          style: CustomTextStyles
                                              .labelLargeGray600))
                                ]),
                            SizedBox(height: 1.v),
                            Padding(
                                padding: EdgeInsets.only(right: 15.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("msg_idk_what_about".tr,
                                          style: theme.textTheme.labelLarge),
                                      Container(
                                          height: 9.adaptSize,
                                          width: 9.adaptSize,
                                          margin: EdgeInsets.only(
                                              top: 5.v, bottom: 4.v),
                                          decoration: BoxDecoration(
                                              color: appTheme.gray50,
                                              borderRadius:
                                                  BorderRadius.circular(4.h)))
                                    ]))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildThumbsUp() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 592.v),
            padding: EdgeInsets.symmetric(horizontal: 61.h, vertical: 12.v),
            decoration: AppDecoration.bg
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      height: 59.v,
                      width: 43.h,
                      margin: EdgeInsets.only(top: 3.v),
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgThumbsUp,
                            height: 43.adaptSize,
                            width: 43.adaptSize,
                            alignment: Alignment.topCenter),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("lbl_chats".tr,
                                style: CustomTextStyles.titleSmallLailaGray100))
                      ])),
                  Padding(
                      padding: EdgeInsets.only(top: 11.v, right: 8.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgCall,
                                height: 25.v,
                                width: 29.h),
                            Text("lbl_calls".tr,
                                style: CustomTextStyles.titleSmallLailaGray100)
                          ]))
                ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
