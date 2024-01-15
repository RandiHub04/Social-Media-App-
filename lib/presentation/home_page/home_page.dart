import '../home_page/widgets/eightyfour_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/eightyfour_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:randi_s_application5/core/app_export.dart';
import 'package:randi_s_application5/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 15.v),
                decoration: AppDecoration.fillBlueGray,
                child: Column(children: [
                  SizedBox(height: 5.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 42.h),
                                child: Text("lbl_albyzy2".tr,
                                    style: theme.textTheme.headlineSmall))),
                        SizedBox(height: 9.v),
                        _buildFiftyNine(),
                        SizedBox(height: 23.v),
                        _buildEightyFour(),
                        SizedBox(height: 2.v),
                        Padding(
                            padding: EdgeInsets.only(right: 7.h),
                            child: Text("lbl_see_all".tr,
                                style: CustomTextStyles.bodySmallTealA200)),
                        SizedBox(height: 3.v),
                        _buildSixtyFive(),
                        SizedBox(height: 63.v),
                        _buildSixteen(),
                        SizedBox(height: 10.v),
                        _buildSixtySix(),
                        SizedBox(height: 21.v),
                        Opacity(
                            opacity: 0.5,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgEllipse1200x393,
                                height: 200.v,
                                width: 393.h))
                      ])))
                ]))));
  }

  /// Section Widget
  Widget _buildFiftyNine() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSearchView(
                      width: 225.h,
                      controller: controller.searchController,
                      hintText: "lbl_search".tr),
                  Spacer(),
                  CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 31.adaptSize,
                      width: 31.adaptSize,
                      margin: EdgeInsets.only(bottom: 6.v),
                      onTap: () {
                        onTapImgUser();
                      }),
                  CustomImageView(
                      imagePath: ImageConstant.imgMegaphone,
                      height: 29.v,
                      width: 32.h,
                      margin: EdgeInsets.only(left: 23.h, bottom: 6.v))
                ])));
  }

  /// Section Widget
  Widget _buildEightyFour() {
    return SizedBox(
        height: 80.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 26.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 24.h);
            },
            itemCount:
                controller.homeModelObj.value.eightyfourItemList.value.length,
            itemBuilder: (context, index) {
              EightyfourItemModel model =
                  controller.homeModelObj.value.eightyfourItemList.value[index];
              return EightyfourItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildSixtyFive() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.h),
        child: IntrinsicWidth(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
              onTap: () {
                onTapNineteen();
              },
              child: Container(
                  decoration: AppDecoration.fillBluegray100
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder9),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgFrame1,
                        height: 127.v,
                        width: 225.h,
                        radius: BorderRadius.circular(9.h)),
                    SizedBox(height: 2.v),
                    Container(
                        width: 138.h,
                        margin: EdgeInsets.only(left: 48.h, right: 39.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgFavorite,
                                  height: 18.adaptSize,
                                  width: 18.adaptSize,
                                  margin: EdgeInsets.only(bottom: 3.v)),
                              Spacer(flex: 47),
                              CustomImageView(
                                  imagePath: ImageConstant.imgSettings,
                                  height: 21.v,
                                  width: 22.h),
                              Spacer(flex: 52),
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeft,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize)
                            ])),
                    SizedBox(height: 3.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      height: 47.v,
                                      width: 34.h,
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text("lbl_alex".tr,
                                                    style: theme.textTheme
                                                        .labelMedium)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgEllipse55,
                                                height: 34.adaptSize,
                                                width: 34.adaptSize,
                                                radius:
                                                    BorderRadius.circular(17.h),
                                                alignment: Alignment.topCenter)
                                          ])),
                                  Container(
                                      width: 114.h,
                                      margin: EdgeInsets.only(
                                          left: 9.h, top: 4.v, bottom: 5.v),
                                      child: Text("msg_malam_kemarin_adalah".tr,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .labelSmallBlack900))
                                ]))),
                    SizedBox(height: 5.v)
                  ]))),
          Container(
              margin: EdgeInsets.only(left: 16.h),
              decoration: AppDecoration.fillBluegray100
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder9),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgFrame2,
                        height: 127.v,
                        width: 225.h,
                        radius: BorderRadius.circular(9.h)),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: 138.h,
                            margin: EdgeInsets.only(left: 46.h, right: 41.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFavorite,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize,
                                      margin: EdgeInsets.only(bottom: 3.v)),
                                  Spacer(flex: 45),
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgSettingsBlueGray90002,
                                      height: 22.v,
                                      width: 21.h),
                                  Spacer(flex: 54),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgArrowLeft,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize)
                                ]))),
                    SizedBox(height: 2.v),
                    Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgEllipse56,
                                  height: 34.adaptSize,
                                  width: 34.adaptSize,
                                  radius: BorderRadius.circular(17.h)),
                              Container(
                                  width: 118.h,
                                  margin: EdgeInsets.only(
                                      left: 10.h, top: 2.v, bottom: 5.v),
                                  child: Text("msg_kesehatan_adalah".tr,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          CustomTextStyles.labelSmallBlack900))
                            ])),
                    SizedBox(height: 1.v),
                    Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text("lbl_theresia".tr,
                            style: theme.textTheme.labelMedium)),
                    SizedBox(height: 5.v)
                  ]))
        ])));
  }

  /// Section Widget
  Widget _buildSixteen() {
    return Padding(
        padding: EdgeInsets.only(left: 30.h, right: 9.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_videos".tr, style: CustomTextStyles.titleSmallTealA200),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("lbl_see_all".tr,
                  style: CustomTextStyles.bodySmallTealA200))
        ]));
  }

  /// Section Widget
  Widget _buildSixtySix() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.h),
        child: IntrinsicWidth(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 162.v,
                        width: 225.h,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 162.v,
                                  width: 225.h,
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle4,
                                            height: 162.v,
                                            width: 225.h,
                                            radius: BorderRadius.circular(9.h),
                                            alignment: Alignment.center),
                                        Opacity(
                                            opacity: 0.5,
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgOverflowMenu,
                                                height: 46.adaptSize,
                                                width: 46.adaptSize,
                                                alignment: Alignment.topRight,
                                                margin: EdgeInsets.only(
                                                    top: 52.v, right: 83.h)))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                  height: 38.v,
                                  width: 225.h,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Opacity(
                                            opacity: 0.5,
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height: 38.v,
                                                    width: 225.h,
                                                    decoration: BoxDecoration(
                                                        color: appTheme
                                                            .blueGray400
                                                            .withOpacity(0.53),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    8.h))))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                width: 169.h,
                                                margin: EdgeInsets.only(
                                                    left: 26.h,
                                                    top: 7.v,
                                                    right: 30.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      _buildThree(
                                                          distance:
                                                              "lbl_12m".tr),
                                                      Spacer(flex: 57),
                                                      SizedBox(
                                                          height: 31.v,
                                                          width: 20.h,
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgSettingsGray900,
                                                                    height:
                                                                        18.v,
                                                                    width: 20.h,
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    child: Text(
                                                                        "lbl_4_5k"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelSmall))
                                                              ])),
                                                      Spacer(flex: 42),
                                                      _buildFive(
                                                          k: "lbl_10k".tr)
                                                    ])))
                                      ])))
                        ])),
                    SizedBox(height: 3.v),
                    Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse57,
                              height: 29.v,
                              width: 31.h,
                              radius: BorderRadius.circular(15.h)),
                          Container(
                              width: 82.h,
                              margin: EdgeInsets.only(left: 7.h),
                              child: Text("msg_this_animal_awesome_animals".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.labelSmallGray50))
                        ])),
                    Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text("lbl_adam".tr,
                            style: CustomTextStyles.labelMediumGray50))
                  ])),
          Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 162.v,
                        width: 225.h,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle5,
                              height: 162.v,
                              width: 225.h,
                              radius: BorderRadius.circular(9.h),
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Opacity(
                                        opacity: 0.5,
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgOverflowMenu,
                                            height: 46.adaptSize,
                                            width: 46.adaptSize)),
                                    SizedBox(height: 22.v),
                                    Container(
                                        width: 225.h,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 26.h),
                                        decoration: AppDecoration
                                            .fillBluegray400
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder9),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 9.v),
                                                  child: _buildThree(
                                                      distance: "lbl_1m".tr)),
                                              Spacer(flex: 57),
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 8.v),
                                                  child: Column(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgSettingsGray90020x21,
                                                        height: 20.v,
                                                        width: 21.h),
                                                    Text("lbl_7k".tr,
                                                        style: theme.textTheme
                                                            .labelSmall)
                                                  ])),
                                              Spacer(flex: 42),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 9.v, right: 4.h),
                                                  child: _buildFive(
                                                      k: "lbl_15k".tr))
                                            ]))
                                  ]))
                        ])),
                    SizedBox(height: 4.v),
                    Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse58,
                              height: 29.v,
                              width: 30.h,
                              radius: BorderRadius.circular(15.h)),
                          Container(
                              width: 37.h,
                              margin: EdgeInsets.only(left: 6.h),
                              child: Text("lbl_nice_cake_food".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.labelSmallGray50))
                        ])),
                    SizedBox(height: 1.v),
                    Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text("lbl_nersi".tr,
                            style: CustomTextStyles.labelMediumGray50))
                  ]))
        ])));
  }

  /// Common widget
  Widget _buildThree({required String distance}) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgFavoriteGray900,
          height: 18.adaptSize,
          width: 18.adaptSize),
      Align(
          alignment: Alignment.centerRight,
          child: Padding(
              padding: EdgeInsets.only(right: 3.h),
              child: Text(distance,
                  style: theme.textTheme.labelSmall!
                      .copyWith(color: appTheme.gray900))))
    ]);
  }

  /// Common widget
  Widget _buildFive({required String k}) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgArrowLeftGray900,
          height: 20.adaptSize,
          width: 20.adaptSize),
      Text(k,
          style: theme.textTheme.labelSmall!.copyWith(color: appTheme.gray900))
    ]);
  }

  /// Navigates to the layarSevenScreen when the action is triggered.
  onTapImgUser() {
    Get.toNamed(
      AppRoutes.layarSevenScreen,
    );
  }

  /// Navigates to the layarTenScreen when the action is triggered.
  onTapNineteen() {
    Get.toNamed(
      AppRoutes.layarTenScreen,
    );
  }
}
