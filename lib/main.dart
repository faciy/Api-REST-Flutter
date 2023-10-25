import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/app/constants/app_string_constants.dart';
import 'package:my_app/app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: LmsAppConstants.APP_NAME,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.white),
    );
  }
}
