import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/app/theme/color_util.dart';
import 'package:my_app/app/theme/text_style_util.dart';

class SimpleTextField extends StatelessWidget {
  const SimpleTextField({
    Key? key,
    required this.hintText,
    required this.textEditingController,
    this.obscureText = false,
    required this.preIconData,
    this.maxLines = 1,
    this.textInputType = TextInputType.text,
  }) : super(key: key);
  final String hintText;
  final TextEditingController textEditingController;
  final bool obscureText;
  final IconData preIconData;
  final int maxLines;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      textAlign: TextAlign.start,
      style: LmsTextUtil.textPoppins14(),
      obscureText: obscureText,
      minLines: 1,
      maxLines: maxLines,
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: hintText,
        labelStyle: LmsTextUtil.textPoppins14(),
        prefixIcon: Icon(preIconData, color: LmsColorUtil.primaryThemeColor),
        contentPadding: EdgeInsets.only(left: 30),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: LmsColorUtil.greyColor10),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: LmsColorUtil.greyColor4, width: 1)),
      ),
    );
  }
}
