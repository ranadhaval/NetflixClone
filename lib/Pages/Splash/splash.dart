import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_clone/Pages/Splash/splash_controller.dart';
import 'package:netflix_clone/theme/app_theme.dart';
import 'package:netflix_clone/util/constants.dart';
import 'package:netflix_clone/util/resources.dart';
import 'package:netflix_clone/widgets/no_appbar.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  double height = Constant.zero;
  double width = Constant.zero;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    final splashController = Get.put(SplashController());

    return GetBuilder<SplashController>(
        init: splashController,
        builder: (controller) {
          return Scaffold(
            appBar: const NoAppBar(
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark,
            ),
            backgroundColor: AppTheme.colorblack,
            body: SizedBox(
              height: height,
              width: width,
              child: const Center(
                child: Image(image: AssetImage(startup)),
              ),
            ),
          );
        });
  }
}
