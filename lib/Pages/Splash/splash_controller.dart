import 'package:get/get.dart';
import 'package:netflix_clone/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      Get.offAllNamed(AppRoute.EPISODE_DETAILS);
    });
    print("object");
    super.onInit();
  }
}
