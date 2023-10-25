import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_app/app/components/button.dart';
import 'package:my_app/app/constants/image_constants.dart';
import 'package:my_app/app/modules/Auth/controllers/auth_controller.dart';
import 'package:my_app/app/modules/Auth/views/login_view.dart';
import 'package:my_app/app/routes/app_pages.dart';
import 'package:my_app/app/theme/color_util.dart';
import 'package:my_app/app/theme/text_style_util.dart';

class SignUpView extends GetView<AuthController> {
  SignUpView({Key? key}) : super(key: key);

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNoController = TextEditingController();
  final TextEditingController entityController = TextEditingController();
  final TextEditingController dateInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 36, right: 36, bottom: 31, top: 46),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                ImageConstants.DRONALOGO,
                height: 114,
                width: 190,
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Employee Sign Up",
                      style: LmsTextUtil.textPoppins24(),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Please enter the following details",
                      style: LmsTextUtil.textPoppins14(),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // SimpleTextField(hintText: "Name*", textEditingController: userNameController),
              // SizedBox(height: 15),
              // SimpleTextField(hintText: "Email", textEditingController: emailController),
              // SizedBox(height: 15),
              // SimpleTextField(hintText: "Phone No*", textEditingController: phoneNoController),
              // SizedBox(height: 15),
              // SimpleTextField(hintText: "Entity*", textEditingController: entityController),
              SizedBox(height: 33),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  MyButton(
                      title: "Sign Up",
                      onPressed: () {
                        Get.offNamed(Routes.LMS_DASHBOARD);
                      }),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: LmsTextUtil.textPoppins14(),
                      ),
                      GestureDetector(
                        onTap: () => Get.offAll(
                          () => LoginView(),
                        ),
                        child: Text("Sign In",
                            style: LmsTextUtil.textPoppins14(
                                color: LmsColorUtil.primaryThemeColor)),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
