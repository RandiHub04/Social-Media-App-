import 'package:randi_s_application5/core/app_export.dart';
import 'package:randi_s_application5/presentation/home_page/models/home_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomePage.
///
/// This class manages the state of the HomePage, including the
/// current homeModelObj
class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<HomeModel> homeModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
