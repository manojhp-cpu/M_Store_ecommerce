import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:m_store/features/authentication/screen/login/log_in.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  int currentPageIndex = 0;

  // update current index when page scroll
  void upDatePageIndex(index) => currentPageIndex = index;


  void dotNavigationClick(index){
    currentPageIndex = index;
    pageController.jumpTo(index);
  }


  void nextPage(){
    if(currentPageIndex == 2){
      final storage = GetStorage();

      if(kDebugMode){
        print('==============Get STORAGE NEXT BUTTON===========');
        print(storage.read('isFirstTime'));
      }

      storage.write('isFirstTime', false);

      if(kDebugMode){
        print('==============Get STORAGE NEXT BUTTON===========');
        print(storage.read('isFirstTime'));
      }

      Get.offAll(const LogInScreen());
    }else{
      int page = currentPageIndex + 1;
      pageController.jumpToPage(page);
      currentPageIndex = page;
    }
  }

  void skipPage() {
    Get.to(() => const LogInScreen());
  }

}