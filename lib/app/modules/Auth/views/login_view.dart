import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_app/app/components/button.dart';
import 'package:my_app/app/components/simple_text_field.dart';
import 'package:my_app/app/constants/image_constants.dart';
import 'package:my_app/app/modules/Auth/controllers/auth_controller.dart';
import 'package:my_app/app/modules/Auth/views/sign_up_view.dart';
import 'package:my_app/app/routes/app_pages.dart';
import 'package:my_app/app/theme/color_util.dart';
import 'package:my_app/app/theme/text_style_util.dart';

class LoginView extends GetView<AuthController> {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print('Username ${userNameController.text}');
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 36, right: 36, bottom: 51),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 160,
              ),
              Image.asset(
                ImageConstants.DRONALOGO,
                height: 183,
                width: 404,
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: LmsTextUtil.textPoppins24(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Please enter the valid Username & Password to Continue",
                      style: LmsTextUtil.textPoppins14(),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SimpleTextField(
                hintText: "Username",
                textEditingController: userNameController,
                preIconData: Icons.person,
              ),
              SizedBox(
                height: 20,
              ),
              SimpleTextField(
                hintText: "Password",
                textEditingController: passwordController,
                preIconData: Icons.password_rounded,
                obscureText: true,
              ),
              SizedBox(
                height: 195,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  MyButton(
                    title: 'Login',
                    onPressed: () {
                      Get.offNamed(Routes.LMS_DASHBOARD);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account ?",
                        style: LmsTextUtil.textManrope14(),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () => Get.to(() => SignUpView()),
                        child: Text(
                          "Sign Up",
                          style: LmsTextUtil.textPoppins14(
                              color: LmsColorUtil.primaryThemeColor),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
