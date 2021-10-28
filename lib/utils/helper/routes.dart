import 'package:get/get.dart';
import 'package:skor_id_flutter/view/intro/intro_view.dart';
import '../../view/home/home_view.dart';

class Routes {
  static const INTRO = '/intro';
  static const HOME = '/home';

  static final pages = [
    GetPage(name: Routes.INTRO, page: () => IntroView()),
    GetPage(name: Routes.HOME, page: () => HomeView()),
  ];
}