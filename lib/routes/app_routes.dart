import 'package:randi_s_application5/presentation/get_started_screen/get_started_screen.dart';
import 'package:randi_s_application5/presentation/get_started_screen/binding/get_started_binding.dart';
import 'package:randi_s_application5/presentation/loading_screen/loading_screen.dart';
import 'package:randi_s_application5/presentation/loading_screen/binding/loading_binding.dart';
import 'package:randi_s_application5/presentation/home_container_screen/home_container_screen.dart';
import 'package:randi_s_application5/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:randi_s_application5/presentation/layar_seven_screen/layar_seven_screen.dart';
import 'package:randi_s_application5/presentation/layar_seven_screen/binding/layar_seven_binding.dart';
import 'package:randi_s_application5/presentation/layar_ten_screen/layar_ten_screen.dart';
import 'package:randi_s_application5/presentation/layar_ten_screen/binding/layar_ten_binding.dart';
import 'package:randi_s_application5/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:randi_s_application5/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String getStartedScreen = '/get_started_screen';

  static const String loadingScreen = '/loading_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String layarSevenScreen = '/layar_seven_screen';

  static const String layarTenScreen = '/layar_ten_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: getStartedScreen,
      page: () => GetStartedScreen(),
      bindings: [
        GetStartedBinding(),
      ],
    ),
    GetPage(
      name: loadingScreen,
      page: () => LoadingScreen(),
      bindings: [
        LoadingBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: layarSevenScreen,
      page: () => LayarSevenScreen(),
      bindings: [
        LayarSevenBinding(),
      ],
    ),
    GetPage(
      name: layarTenScreen,
      page: () => LayarTenScreen(),
      bindings: [
        LayarTenBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => GetStartedScreen(),
      bindings: [
        GetStartedBinding(),
      ],
    )
  ];
}
