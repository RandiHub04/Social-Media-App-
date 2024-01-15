import 'controller/get_started_controller.dart';
import 'package:flutter/material.dart';
import 'package:randi_s_application5/core/app_export.dart';
import 'package:randi_s_application5/widgets/custom_elevated_button.dart';

class GetStartedScreen extends GetWidget<GetStartedController> {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup69),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 93.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(children: [
                        SizedBox(
                            height: 131.v,
                            width: 97.h,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgVector,
                                      height: 76.v,
                                      width: 44.h,
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(
                                          left: 24.h, top: 14.v)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgVector108x97,
                                      height: 108.v,
                                      width: 97.h,
                                      alignment: Alignment.topCenter),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(right: 4.h),
                                          child: Text("lbl_albyzy".tr,
                                              style: CustomTextStyles
                                                  .titleLargeInterOrange800)))
                                ])),
                        SizedBox(height: 128.v),
                        SizedBox(
                            width: 244.h,
                            child: Text("msg_find_friends_make".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .titleLargeLibreBaskerville)),
                        SizedBox(height: 172.v),
                        CustomElevatedButton(
                            width: 191.h,
                            text: "lbl_get_started".tr,
                            onPressed: () {
                              onTapGetStarted();
                            }),
                        SizedBox(height: 113.v),
                        Opacity(
                            opacity: 0.5,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgEllipse1,
                                height: 200.v,
                                width: 393.h))
                      ])))
                    ])))));
  }

  /// Navigates to the loadingScreen when the action is triggered.
  onTapGetStarted() {
    Get.toNamed(
      AppRoutes.loadingScreen,
    );
  }
}
