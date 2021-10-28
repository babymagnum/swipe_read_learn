import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:skor_id_flutter/utils/theme/theme_text_style.dart';
import 'package:skor_id_flutter/view/base_view.dart';
import 'package:skor_id_flutter/view/home/home_controller.dart';
import 'package:skor_id_flutter/view/home/widget/search_topic.dart';
import 'package:skor_id_flutter/view/home/widget/topic_item.dart';

class HomeView extends StatelessWidget {
  late HomeController _homeCt;

  @override
  Widget build(BuildContext context) {
    _homeCt = Get.put(HomeController());

    return BaseView(
      isUseAppbar: true,
      appbarTitle: 'Follow Topic',
      appbarElevation: 0,
      child: Container(
        width: Get.width, height: Get.height,
        color: Colors.black87,
        child: Obx(() => Column(
            children: [
              SizedBox(height: 8.h,),
              SearchTopic(),
              _homeCt.topic.value.isNotEmpty && _homeCt.filteredTopic.isEmpty ?
              Text('Pencarian tidak ditemukan', style: ThemeTextStyle.robotoRegular.apply(color: Colors.white.withOpacity(0.7), fontSizeDelta: 16.sp),).paddingOnly(top: 100.h) :
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2.5,
                    crossAxisSpacing: 16.w,
                    mainAxisSpacing: 16.w,
                    crossAxisCount: 2,
                  ),
                  itemCount: _homeCt.topic.isNotEmpty ? _homeCt.filteredTopic.length : _homeCt.listTopic.length,
                  itemBuilder: (_, index) => TopicItem(_homeCt.topic.isNotEmpty ? _homeCt.filteredTopic[index] : _homeCt.listTopic[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
