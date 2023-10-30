import 'package:get/get.dart';
import 'package:my_app/app/modules/Auth/bindings/auth_binding.dart';
import 'package:my_app/app/modules/Auth/views/login_view.dart';
import 'package:my_app/app/modules/LmsDashboard/bindings/lms_dashboard_binding.dart';
import 'package:my_app/app/modules/LmsDashboard/views/lms_dashboard_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.AUTH;

  static final routes = [
    GetPage(
      name: _Paths.LMS_DASHBOARD,
      page: () => LmsDashboardView(),
      binding: LmsDashboardBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => LoginView(),
      binding: AuthBinding(),
    ),
  ];
}
