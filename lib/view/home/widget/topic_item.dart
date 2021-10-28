import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:skor_id_flutter/model/local_model.dart';
import 'package:skor_id_flutter/utils/theme/theme_text_style.dart';
import 'package:skor_id_flutter/utils/widget/custom_network_image.dart';

class TopicItem extends StatelessWidget {

  final Topic item;

  TopicItem(this.item);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          CustomNetworkImage(
            url: item.image,
            size: Size(Get.width - (32.w) - 16.w, 100.h),
            borderRadius: 10,
            boxFit: BoxFit.cover,
          ),
          Positioned.fill(
            child: Container(
              width: Get.width - (32.w) - 16.w, height: 100.h,
              color: Colors.black.withOpacity(0.3),
            ),
          ),
          Center(
            child: Row(
              children: [
                Expanded(
                  child: Text(item.title, style: ThemeTextStyle.robotoMedium.apply(color: Colors.white, fontSizeDelta: 20.sp),).paddingSymmetric(horizontal: 16.w),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
