import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_app/app/constants/image_constants.dart';
import 'package:my_app/app/modules/LmsDashboard/views/lms_dashboard_view.dart';
import 'package:my_app/app/theme/color_util.dart';
import 'package:my_app/app/theme/text_style_util.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, this.backgroundColor = Colors.white})
      : super(key: key);
  final Color backgroundColor;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(54);
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool showNotificationArea = true;

  String formatDateTime() {
    var lmsDateTime = DateFormat('d MMM yyyy | HH:mm').format(DateTime.now());
    return lmsDateTime.toString();
  }

  @override
  Widget build(BuildContext context) {
    ScaffoldState scaffoldState = Scaffold.of(context);
    return AppBar(
      toolbarHeight: 57,
      backgroundColor: widget.backgroundColor,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          scaffoldState.isDrawerOpen == false
              ? scaffoldState.openDrawer()
              : scaffoldState.closeDrawer();
        },
        child: Icon(
          Icons.sort_rounded,
          color: LmsColorUtil.primaryThemeColor,
          size: 28,
        ),
      ),
      centerTitle: true,
      toolbarOpacity: 1,
      title: GestureDetector(
        onTap: () => Get.offAll(() => LmsDashboardView()),
        child: Image.asset(
          ImageConstants.DRONALOGO,
          fit: BoxFit.fill,
          height: 40,
          width: 97,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            showNotificationDialog();
          },
          child: Container(
            margin: EdgeInsets.only(right: 25, top: 20, bottom: 6, left: 20),
            padding: EdgeInsets.only(left: 5, right: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: LmsColorUtil.primaryThemeColor,
              ),
            ),
            child: Center(
              child: Icon(
                Icons.notifications,
                color: LmsColorUtil.primaryThemeColor,
                size: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future showNotificationDialog() {
    return showGeneralDialog(
        context: context,
        barrierColor: Colors.transparent,
        barrierDismissible: true,
        barrierLabel: "learningcourses",
        pageBuilder: (_, __, ___) {
          return Stack(
            alignment: Alignment.topRight,
            fit: StackFit.loose,
            children: [
              Container(
                height: 233,
                width: 210,
                margin: EdgeInsets.only(top: 90, right: 16),
                // padding: EdgeInsets.only(left: 10, top: 2),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 5, spreadRadius: 1),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Container(
                      //   height: 15,
                      //   color: Colors.transparent,
                      //   child: Icon(Icons.play_arrow_rounded),
                      // ),
                      // Positioned(
                      //   child: Icon(Icons.play_arrow_rounded),
                      // ),
                      Container(
                        height: 32,
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 10, top: 2),
                        decoration: BoxDecoration(
                          color: LmsColorUtil.primaryThemeColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                        child: DefaultTextStyle(
                          child: Text("Notification"),
                          style: LmsTextUtil.textRubik16(),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 200,
                        child: _buildListTile(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        });
  }

  Widget _buildListTile() {
    return ListView.separated(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: 5,
      padding: EdgeInsets.all(0),
      separatorBuilder: (BuildContext context, int index) => Divider(
        height: 1,
        indent: 5,
        endIndent: 5,
        color: LmsColorUtil.greyColor3,
      ),
      itemBuilder: (_, index) {
        return ListTile(
          title: Text(
            "Knowledge Repository Published to you",
            style: LmsTextUtil.textRoboto11(),
          ),
          subtitle: Text(
            formatDateTime(),
            style: LmsTextUtil.textRoboto11(
              color: LmsColorUtil.greyColor3,
              fontWeight: FontWeight.w500,
            ),
          ),
          contentPadding:
              EdgeInsets.only(left: 12, right: 8, top: 0, bottom: 0),
          minVerticalPadding: 10,
          horizontalTitleGap: 0,
          minLeadingWidth: 0,
          dense: true,
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        );
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(57);
}
// Get.dialog(
//   barrierColor: Colorshite,
//   Positioned(
//     top: 60,
//     height: 223,
//     left: 16,
//     width: 223,
//     child: Container(
//       // height: 223,
//       // width: 210,
//       child: Column(
//         children: [
//           Text("content"),
//           Text("content"),
//           Text("content"),
//           Text("content"),
//         ],
//       ),
//     ),
//   ),
// );
// showDialog(
//     context: context,
//     barrierColor: Colors.transparent,
//     builder: (_) {
//       return Align(
//         alignment: Alignment.topRight,
//         child: AlertDialog(
//           title: Text("Notification"),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15),
//           ),
//           // content: ListView(
//           //   shrinkWrap: true,
//           //   physics: NeverScrollableScrollPhysics(),
//           //   children: [
//           //     Text("content"),
//           //     Text("content"),
//           //     Text("content"),
//           //     Text("content"),
//           //   ],
//           // ),
//         ),
//       );
//     });
// : Container();
// if (showNotificationArea == true) {
//   setState(() {
//     showNotificationArea = false;
//   });
// } else {
//   setState(() {
//     showNotificationArea = true;
//   });
// }
// showNotificationArea
//     ? SizedBox(
//         height: 223,
//         width: 210,
//         child: Stack(
//           children: [
//             Positioned(
//               top: 100,
//               width: 10,
//               child: Container(
//                 height: 223,
//                 width: 210,
//                 child: Column(
//                   children: [
//                     Text("content"),
//                     Text("content"),
//                     Text("content"),
//                     Text("content"),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )
//     : Container(),
//
// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({Key? key, this.backgroundColor = Colorshite}) : super(key: key);
//   final Color backgroundColor;
//
//   @override
//   Widget build(BuildContext context) {
//     ScaffoldState scaffoldState = Scaffold.of(context);
//     return AppBar(
//       toolbarHeight: 54,
//       // backgroundColor: LmsColorUtileaderColor,
//       backgroundColor: backgroundColor,
//       elevation: 0,
//       leading: GestureDetector(
//         onTap: () {
//           scaffoldState.isDrawerOpen == false
//               ? scaffoldState.openDrawer()
//               : scaffoldState.closeDrawer();
//         },
//         child: Icon(
//           Icons.sort_rounded,
//           color: LmsColorUtil.primaryThemeColor,
//           size: 28,
//         ),
//       ),
//       centerTitle: true,
//       toolbarOpacity: 1,
//       // titleSpacing: 55,
//       title: GestureDetector(
//         onTap: () => Get.offAll(() => LmsDashboardView()),
//         child: Image.asset(
//           ImageConstants.DRONALOGO,
//           fit: BoxFit.fill,
//           height: 40,
//           width: 97,
//         ),
//       ),
//       actions: [
//         GestureDetector(
//           onTap: () {
//
//             // LmsNotificationView();
//             Get.dialog(
//               Container(
//                 height: 223,
//                 width: 210,
//                 child: Column(
//                   children: [
//                     Text("content"),
//                     Text("content"),
//                     Text("content"),
//                     Text("content"),
//                   ],
//                 ),
//               ),
//             );
//           },
//           child: Container(
//             margin: EdgeInsets.only(right: 25, top: 20, bottom: 6, left: 20),
//             padding: EdgeInsets.only(left: 5, right: 5),
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               border: Border.all(
//                 color: LmsColorUtil.primaryThemeColor,
//               ),
//             ),
//             child: Center(
//               child: Icon(
//                 Icons.notifications,
//                 color: LmsColorUtil.primaryThemeColor,
//                 size: 15,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   @override
//   Size get preferredSize => Size.fromHeight(54);
// }
