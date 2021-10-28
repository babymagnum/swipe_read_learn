# SIMKP PLN Mobile Flutter

# Core

1. Use `BaseView()` as parent widget in every screen
2. For navigation between screen use `Get.to(SomeView())`
3. Simple usecase of GetX look after `login` folder:
- `login_controller` -> put all logic here (use .obs to make value listenable for change)
- `login_view` -> view with `Obx` widget to listen change from controller

# Styling

1. Using flutter_screen_util packages to get dynamic size based on design draft, example usecase:
- to set width use `38.w`
- to set height use `38.h`
- to set fontsize use `20.ssp`
- to set TextStyle use `ThemeTextStyle.biryaniBold.apply(color: Colors.white, fontSizeDelta: 14.ssp)`
