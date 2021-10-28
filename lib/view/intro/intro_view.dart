import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:skor_id_flutter/utils/helper/routes.dart';
import 'package:skor_id_flutter/utils/theme/theme_text_style.dart';

import '../base_view.dart';

class IntroView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      child: Container(
        width: Get.width, height: Get.height,
        color: Colors.black87,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Swipe.\nRead.\nLearn.', style: ThemeTextStyle.merriweatherBold.apply(color: Colors.white, fontSizeDelta: 55.sp),)
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Get.toNamed(Routes.HOME),
                    child: Container(
                      width: Get.width,
                      child: Text('Start Reading', style: ThemeTextStyle.robotoMedium.apply(color: Colors.blueAccent, fontSizeDelta: 28.sp),),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(6))
                      ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(16.w, 18.h, 16.w, 16.h),
                    ),
                  ),
                  SizedBox(height: 24.h,),
                  RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: ThemeTextStyle.robotoRegular.apply(color: Colors.white, fontSizeDelta: 16.sp),
                      children: [
                        TextSpan(
                          text: 'Log In',
                          style: ThemeTextStyle.robotoMedium.apply(color: Colors.white, fontSizeDelta: 16.sp)
                        )
                      ]
                    ),
                  )
                ],
              ),
            )
          ],
        ).paddingSymmetric(horizontal: 24.w),
      ),
    );
  }
}
