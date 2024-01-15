import 'controller/loading_controller.dart';
import 'package:flutter/material.dart';
import 'package:randi_s_application5/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LoadingScreen extends GetWidget<LoadingController> {
  const LoadingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 84.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 12.v),
              SizedBox(
                height: 225.adaptSize,
                width: 225.adaptSize,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 225.adaptSize,
                        width: 225.adaptSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            112.h,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.34, 0.85),
                            colors: [
                              appTheme.amber700,
                              appTheme.blueGray90001,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 148.v,
                        width: 133.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 105.v,
                              width: 60.h,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 33.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVector108x97,
                              height: 148.v,
                              width: 133.h,
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 90.v),
              Padding(
                padding: EdgeInsets.only(left: 49.h),
                child: Text(
                  "lbl_loading".tr,
                  style: CustomTextStyles.titleLargeLibreBaskerville,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
