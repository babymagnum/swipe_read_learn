import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:skor_id_flutter/utils/theme/theme_text_style.dart';
import 'package:skor_id_flutter/view/home/home_controller.dart';

class SearchTopic extends StatelessWidget {
  HomeController _homeCt = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        color: Colors.grey.withOpacity(0.15)
      ),
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.fromLTRB(16.w, 13.h, 16.w, 11.h),
      child: Row(
        children: [
          Icon(Icons.search, size: 15.w, color: Colors.white.withOpacity(0.3),),
          Expanded(
            child: TextField(
              onChanged: (value) => _homeCt.search(value.trim()),
              autocorrect: false,
              enableSuggestions: false,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              style: ThemeTextStyle.robotoRegular.apply(
                  color: Colors.white.withOpacity(0.9),
                  fontSizeDelta: 16.sp),
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(left: 8.w, right: 12.w),
                hintText: 'Search topics...',
                hintStyle: ThemeTextStyle.robotoRegular.apply(
                    color: Colors.white.withOpacity(0.3),
                    fontSizeDelta: 16.sp),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
