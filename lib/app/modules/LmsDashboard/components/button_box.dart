import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/app/theme/text_style_util.dart';

class ButtonBox extends StatelessWidget {
  const ButtonBox({
    Key? key,
    required this.onTap,
    required this.imageConstants,
    required this.boxName,
  }) : super(key: key);
  final String imageConstants;
  final String boxName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 105,
            width: 109,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Image.asset(
              imageConstants,
              // fit: BoxFit.fill,
              alignment: Alignment.center,
              width: 66,
              height: 66,
            ),
          ),
          Text(
            boxName,
            style: LmsTextUtil.textInter17(),
          ),
        ],
      ),
    );
  }
}
