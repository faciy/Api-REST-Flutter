part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const AUTH = _Paths.AUTH;
  static const LMS_DASHBOARD = _Paths.LMS_DASHBOARD;
}

abstract class _Paths {
  _Paths._();
  static const AUTH = '/auth';
  static const LMS_DASHBOARD = '/lms-dashboard';
}
