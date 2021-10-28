import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CommonController extends GetxController {
  SharedPreferences? preferences;

  initValue() async {
    preferences = await SharedPreferences.getInstance();
  }
}