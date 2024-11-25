import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:m_store/features/authentication/screen/login/log_in.dart';
import 'package:m_store/features/authentication/screen/on_boarding/on_boarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    if (kDebugMode) {
      print('==============Get Auth Repo===========');
      print(deviceStorage.read('isFirstTime'));
    }
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => const LogInScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }

/* --------------------- Email and Password sign in ---------------------- */


}
