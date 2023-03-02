import 'package:get/get.dart';

import 'package:navaneeth_app/app/modules/Register/bindings/register_binding.dart';
import 'package:navaneeth_app/app/modules/Register/views/register_view.dart';
import 'package:navaneeth_app/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.REGISTER;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
  ];
}
