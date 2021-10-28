import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:skor_id_flutter/utils/controller/common_controller.dart';
import 'package:skor_id_flutter/utils/helper/constant.dart';
import 'package:skor_id_flutter/utils/helper/routes.dart';

final GlobalKey globalNavigatorKey = GlobalKey<NavigatorState>();
final CommonController commonController = Get.put(CommonController(), permanent: true);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await commonController.initValue();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => GetMaterialApp(
        title: 'Swipe Read Learn',
        navigatorKey: globalNavigatorKey as GlobalKey<NavigatorState>?,
        initialRoute: (commonController.preferences?.getBool(Constant.IS_LOGIN) ?? false) ? Routes.HOME : Routes.INTRO,
        getPages: Routes.pages,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
