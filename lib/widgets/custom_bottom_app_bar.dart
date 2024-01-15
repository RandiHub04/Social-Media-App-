import 'package:flutter/material.dart';
import 'package:randi_s_application5/core/app_export.dart';

class CustomBottomAppBar extends StatelessWidget {
  CustomBottomAppBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxList<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgHome,
        activeIcon: ImageConstant.imgHome,
        title: "lbl_home".tr,
        type: BottomBarEnum.Home,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgNavNotification,
      activeIcon: ImageConstant.imgNavNotification,
      title: "lbl_notification".tr,
      type: BottomBarEnum.Notification,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgOverflowMenuGray50,
      activeIcon: ImageConstant.imgOverflowMenuGray50,
      title: "lbl_live".tr,
      type: BottomBarEnum.Live,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLock,
      activeIcon: ImageConstant.imgLock,
      title: "lbl_account".tr,
      type: BottomBarEnum.Account,
    )
  ].obs;

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: SizedBox(
          height: 33.v,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomMenuList.length,
              (index) {
                return InkWell(
                  onTap: () {
                    for (var element in bottomMenuList) {
                      element.isSelected = false;
                    }
                    bottomMenuList[index].isSelected = true;
                    onChanged?.call(bottomMenuList[index].type);
                    bottomMenuList.refresh();
                  },
                  child: bottomMenuList[index].isSelected
                      ? SizedBox(
                          height: 83.v,
                          width: 100.h,
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 44.v,
                                    right: 38.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        height: 18.v,
                                        width: 21.h,
                                        margin: EdgeInsets.only(
                                          left: 21.h,
                                          right: 19.h,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            CustomImageView(
                                              imagePath: bottomMenuList[index]
                                                  .activeIcon,
                                              height: 17.v,
                                              width: 21.h,
                                              color: appTheme.gray50,
                                              alignment: Alignment.bottomCenter,
                                              margin: EdgeInsets.only(top: 1.v),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                height: 5.adaptSize,
                                                width: 5.adaptSize,
                                                margin: EdgeInsets.only(
                                                  left: 12.h,
                                                  right: 3.h,
                                                  bottom: 12.v,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: appTheme.red800,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    2.h,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: 14.h,
                                                  right: 4.h,
                                                  bottom: 12.v,
                                                ),
                                                child: Text(
                                                  "lbl_3".tr,
                                                  style: CustomTextStyles
                                                      .leelawadeeUIBlack900,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 1.v,
                                        width: 4.h,
                                        margin: EdgeInsets.only(
                                          left: 29.h,
                                          top: 3.v,
                                          right: 28.h,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            2.h,
                                          ),
                                          border: Border.all(
                                            color: appTheme.gray50,
                                            width: 2.h,
                                            strokeAlign: strokeAlignCenter,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        bottomMenuList[index].title ?? "",
                                        style:
                                            theme.textTheme.bodySmall!.copyWith(
                                          color: appTheme.gray50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgClose,
                                height: 46.adaptSize,
                                width: 46.adaptSize,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(
                                  left: 54.h,
                                  bottom: 37.v,
                                ),
                              ),
                            ],
                          ),
                        )
                      : SizedBox(
                          height: 46.v,
                          width: 33.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: bottomMenuList[index].icon,
                                height: 33.adaptSize,
                                width: 33.adaptSize,
                                color: appTheme.tealA200,
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(bottom: 13.v),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 30.v,
                                  ),
                                  child: Text(
                                    bottomMenuList[index].title ?? "",
                                    style: CustomTextStyles.bodySmallTealA200
                                        .copyWith(
                                      color: appTheme.tealA200,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Notification,
  Live,
  Account,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
