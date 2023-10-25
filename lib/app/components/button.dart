import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/app/theme/text_style_util.dart';

import '../theme/color_util.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.buttonHeight = 59,
    this.buttonWidth = double.infinity,
    this.buttonContainerColor = LmsColorUtil.primaryThemeColor,
    this.buttonRadius = 9,
    this.child,
  }) : super(key: key);
  final String title;
  final VoidCallback onPressed;
  final double buttonHeight;
  final double buttonWidth;
  final Color buttonContainerColor;
  final double buttonRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      disabledColor: LmsColorUtil.primaryThemeColor,
      onPressed: onPressed,
      height: buttonHeight,
      minWidth: buttonWidth,
      color: buttonContainerColor,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(buttonRadius),
      ),
      child: child ??
          Text(title, style: LmsTextUtil.textPoppins18(color: Colors.white)),
    );
  }
}
