import '../controller/home_controller.dart';
import '../models/eightyfour_item_model.dart';
import 'package:flutter/material.dart';
import 'package:randi_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class EightyfourItemWidget extends StatelessWidget {
  EightyfourItemWidget(
    this.eightyfourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EightyfourItemModel eightyfourItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 61.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            Obx(
              () => CustomImageView(
                imagePath: eightyfourItemModelObj.userImage!.value,
                height: 59.v,
                width: 60.h,
                radius: BorderRadius.circular(
                  30.h,
                ),
              ),
            ),
            Obx(
              () => Text(
                eightyfourItemModelObj.userName!.value,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
