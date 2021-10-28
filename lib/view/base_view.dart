import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:skor_id_flutter/utils/theme/theme_text_style.dart';

class BaseView extends StatelessWidget {
  final bool isUseAppbar;
  final String? appbarTitle;
  final Widget? appbarLeading;
  final Widget child;
  final BottomNavigationBar? bottomNavigationBar;
  final bool isUseSafeArea;
  final Color appbarBackgroundColor;
  final double? appbarElevation;

  BaseView({this.isUseAppbar:false, this.appbarTitle, this.appbarLeading,
    required this.child, this.bottomNavigationBar, this.isUseSafeArea = false,
    this.appbarBackgroundColor = Colors.black87, this.appbarElevation});

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      backgroundColor: appbarBackgroundColor,
      brightness: Brightness.dark,
      elevation: appbarElevation,
      centerTitle: true,
      title: Text(appbarTitle ?? 'Page Title', style: ThemeTextStyle.merriweatherBold.apply(fontSizeDelta: 20.sp, color: Colors.white)),
      leading: appbarLeading ?? IconButton(
        icon: Icon(Icons.arrow_back_rounded, color: Colors.white),
        onPressed: () => Get.back()
      ),
    );

    return Scaffold(
      appBar: isUseAppbar ? _appBar as PreferredSizeWidget? : null,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: bottomNavigationBar,
      body: isUseSafeArea ? SafeArea(child: child) : child,
    );
  }
}
