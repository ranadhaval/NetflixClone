import 'package:get/get.dart';
import 'package:netflix_clone/Pages/EpisodeVideo/episode_video.dart';
import 'package:netflix_clone/Pages/EpisodeDetails/episode_details.dart';
import 'package:netflix_clone/Pages/Splash/splash.dart';

import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(name: AppRoute.EPISODE_DETAILS, page: () => const EpisodeDetail()),
    GetPage(name: AppRoute.EPISODE_VIDEO, page: () => const EpisodeVideo()),
    GetPage(name: AppRoute.SPLASH, page: () => const Splash()),
  ];
 }
