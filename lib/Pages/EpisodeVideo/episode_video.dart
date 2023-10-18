import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_clone/Pages/EpisodeVideo/episode_video_controller.dart';
import 'package:netflix_clone/Pages/video_view.dart';
import 'package:netflix_clone/routes/app_routes.dart';
import 'package:netflix_clone/theme/app_theme.dart';
import 'package:netflix_clone/util/_string.dart';
import 'package:netflix_clone/util/array_list.dart';
import 'package:netflix_clone/util/constants.dart';
import 'package:netflix_clone/widgets/Custombutton.dart';
import 'package:netflix_clone/widgets/_appbar.dart';
import 'package:netflix_clone/widgets/custom_text.dart';
import 'package:netflix_clone/widgets/options.dart';

class EpisodeVideo extends StatefulWidget {
  const EpisodeVideo({super.key});

  @override
  State<EpisodeVideo> createState() => _EpisodeVideoState();
}

class _EpisodeVideoState extends State<EpisodeVideo>
    with TickerProviderStateMixin {
  final episodeVideoController = Get.put(EpisodeVideoController());
  @override
  Widget build(BuildContext context) {
    episodeVideoController.height = MediaQuery.of(context).size.height;
    episodeVideoController.width = MediaQuery.of(context).size.width;
    episodeVideoController.update();
    return GetBuilder(
      init: episodeVideoController,
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppTheme.colorblack,
          body: Column(
            children: [
              appBar(
                  topPadding: Constant.appbarTopPadding,
                  onTap: () {
                    Get.back();
                  }),
              const SizedBox(
                height: Constant.SIZE20,
              ),
              const VideoWidget(),
              const SizedBox(
                height: Constant.SIZE10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: Constant.SIZE10,
                          right: Constant.SIZE10,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomText(
                                  topPadding:
                                      Constant.rickAndMortySecondTopPadding,
                                  title: Strings.rickAndMorty,
                                  color: AppTheme.colorWhite,
                                  fontSize: Constant.episodeTitleSecondSize,
                                  fontfamily: Strings.emptyString,
                                  fontWight: FontWeight.bold,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: Constant.FIVE,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomText(
                                  title: Strings.twentyTwentyTwo,
                                  color: AppTheme.colorWhite.withOpacity(
                                      Constant.episodeSubTitleColorOpacity),
                                  fontSize: Constant.episodeSubTitleSize,
                                  fontfamily: Strings.emptyString,
                                ),
                                const SizedBox(
                                  width: Constant.SIZE10,
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: Constant.languageLabelLeftPadding,
                                      right: Constant.languageLabelRightPadding,
                                      top: Constant.languageLabelTopPadding,
                                      bottom:
                                          Constant.languageLabelBottomPadding),
                                  decoration: BoxDecoration(
                                      color: AppTheme.greyColor.withOpacity(
                                          Constant.languageLabelColorOpacity),
                                      borderRadius: BorderRadius.circular(1.5)),
                                  child: CustomText(
                                    title: Strings.A,
                                    color: AppTheme.colorWhite.withOpacity(
                                        Constant.episodeSubTitleColorOpacity),
                                    fontSize: Constant.languageLabelSize,
                                    fontfamily: Strings.emptyString,
                                    fontWight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  width: Constant.SIZE10,
                                ),
                                CustomText(
                                  title: Strings.season6,
                                  color: AppTheme.colorWhite
                                      .withOpacity(Constant.seasonColorOpacity),
                                  fontSize: Constant.seasonTextSize,
                                  fontfamily: Strings.emptyString,
                                  fontWight: FontWeight.w400,
                                ),
                                const SizedBox(
                                  width: Constant.FIVE,
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: Constant.hdTextLeftPadding,
                                      right: Constant.hdTextRightPadding,
                                      top: Constant.hdTextTopPadding,
                                      bottom: Constant.hdTextBottomPadding),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          Constant.hdSquareRadius),
                                      border: Border.all(
                                          color: AppTheme.colorWhite)),
                                  child: CustomText(
                                    title: Strings.HD,
                                    color: AppTheme.colorWhite,
                                    fontSize: Constant.hdTextSize,
                                    fontfamily: Strings.emptyString,
                                    fontWight: FontWeight.w800,
                                    wordSpacing: Constant.hdWordSpacing,
                                  ),
                                ),
                                const SizedBox(
                                  width: Constant.FIVE,
                                ),
                                Icon(
                                  Icons.chat,
                                  size: Constant.chatIconSize,
                                  color: AppTheme.colorWhite,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomText(
                                  topPadding:
                                      Constant.episodeSubTitleSecondTopPadding,
                                  title: Strings.newEpisode,
                                  color: AppTheme.colorWhite,
                                  fontSize: Constant.episodeSecondSubTitleSize,
                                  fontfamily: Strings.emptyString,
                                  fontWight: FontWeight.bold,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: Constant.SIZE10,
                            ),
                            CustomButton(
                                onTap: () {
                                  Get.toNamed(AppRoute.EPISODE_VIDEO);
                                },
                                backgroundColor: AppTheme.colorWhite,
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.play_arrow,
                                      color: AppTheme.colorblack,
                                    ),
                                    const SizedBox(
                                      width: Constant.FIVE,
                                    ),
                                    CustomText(
                                      title: Strings.play,
                                      color: AppTheme.colorblack,
                                      fontSize: Constant.playTextSize,
                                      fontfamily: Strings.emptyString,
                                      fontWight: FontWeight.bold,
                                    ),
                                  ],
                                )),
                            const SizedBox(
                              height: Constant.SIZE10,
                            ),
                            CustomButton(
                              backgroundColor:
                                  AppTheme.greyColor.withOpacity(0.6),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.file_download,
                                    color: AppTheme.colorWhite,
                                  ),
                                  const SizedBox(
                                    width: Constant.FIVE,
                                  ),
                                  CustomText(
                                    title: Strings.downloads6,
                                    color: AppTheme.colorWhite,
                                    fontSize: Constant.downloadSeasonSize,
                                    fontfamily: Strings.emptyString,
                                    fontWight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: Constant.SIZE10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomText(
                                  title: Strings.seasonNameWithTitle,
                                  color: AppTheme.colorWhite,
                                  fontSize: Constant.seasonnamewithTitleSize,
                                  fontfamily: Strings.emptyString,
                                  fontWight: FontWeight.bold,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: Constant.SIZE15,
                            ),
                            CustomText(
                              title: Strings.episodeDiscription,
                              color: AppTheme.colorWhite,
                              fontSize: Constant.episodeDescriptionSecondSize,
                              fontfamily: Strings.emptyString,
                              height: Constant.episodeDescriptionHeight,
                              fontWight: FontWeight.w400,
                            ),
                            const SizedBox(
                              height: Constant.SIZE10,
                            ),
                            Row(
                              children: [
                                CustomText(
                                  title: Strings.sttarring,
                                  color: AppTheme.colorWhite
                                      .withOpacity(Constant.sttarringOpacity),
                                  fontSize: Constant.sttarringSize,
                                  fontfamily: Strings.emptyString,
                                  height: Constant.episodeDescriptionHeight,
                                  fontWight: FontWeight.w400,
                                ),
                                CustomText(
                                  title: Strings.justinRolin,
                                  color: AppTheme.colorWhite
                                      .withOpacity(Constant.justrolindOpacity),
                                  fontSize: Constant.justrolindSize,
                                  fontfamily: Strings.emptyString,
                                  height: Constant.episodeDescriptionHeight,
                                  fontWight: FontWeight.w400,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: Constant.THREE,
                            ),
                            Row(
                              children: [
                                CustomText(
                                  title: Strings.creator,
                                  color: AppTheme.colorWhite
                                      .withOpacity(Constant.creatorOpacity),
                                  fontSize: Constant.creatorSize,
                                  fontfamily: Strings.emptyString,
                                  height: Constant.creatorTextHeight,
                                  fontWight: FontWeight.w400,
                                ),
                                CustomText(
                                  title: Strings.danHoman,
                                  color: AppTheme.colorWhite
                                      .withOpacity(Constant.danHomanOpacity),
                                  fontSize: Constant.danHomanSize,
                                  fontfamily: Strings.emptyString,
                                  height: Constant.creatorTextHeight,
                                  fontWight: FontWeight.w400,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: Constant.SIZE10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                options(
                                  icon: Icons.add,
                                  title: Strings.myList,
                                  iconSize: Constant.optionsSize,
                                ),
                                options(
                                    icon: Icons.thumb_up,
                                    title: Strings.rate,
                                    iconSize: Constant.rateSize),
                                options(
                                    icon: Icons.share,
                                    title: Strings.share,
                                    iconSize: Constant.optionsSize),
                                options(
                                    icon: Icons.download_outlined,
                                    title: Strings.downloadSeason,
                                    isDowalod: true,
                                    iconSize: Constant.optionsSize),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: Constant.SIZE20,
                      ),
                      Container(
                        height: Constant.deviderSize,
                        color: AppTheme.greyColor
                            .withOpacity(Constant.deviderColorOpacity),
                      ),
                      const SizedBox(
                        height: Constant.SIZE10,
                      ),
                      Row(
                        children: [
                          TabBar(
                              tabAlignment: TabAlignment.start,
                              isScrollable: true,
                              labelPadding:
                                  EdgeInsets.only(left: Constant.labelPadding),
                              padding:
                                  EdgeInsets.only(left: Constant.tabBarPadding),
                              indicatorColor: AppTheme.colorRed,
                              indicatorWeight: Constant.inidcatorWeight,
                              indicatorSize: TabBarIndicatorSize.label,
                              controller: episodeVideoController.tabController,
                              tabs: [
                                CustomText(
                                  title: Strings.episodes,
                                  color: AppTheme.colorWhite,
                                  fontSize: Constant.labelSize,
                                  fontfamily: Strings.emptyString,
                                  fontWight: FontWeight.bold,
                                ),
                                CustomText(
                                  title: Strings.moreLikeThis,
                                  color: AppTheme.colorWhite,
                                  fontWight: FontWeight.bold,
                                  fontSize: Constant.labelSize,
                                  fontfamily: Strings.emptyString,
                                ),
                              ]),
                        ],
                      ),
                      const SizedBox(
                        height: Constant.SIZE10,
                      ),
                      SizedBox(
                        height: controller.height *
                            Constant.episodeVideoTabbarHeight,
                        child: TabBarView(
                          controller: episodeVideoController.tabController,
                          children: [
                            listview(list: episodes),
                            listview(list: moreLike),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  listview({required List<String> list}) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
                left: Constant.episodeVideoListViewLeftPadding,
                right: Constant.episodeVideoListViewRightPadding),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: Constant.episodevideoTitleImageHeight,
                          width: Constant.episodevideoTitleImageWidth,
                          child: Stack(
                            children: [
                              Container(
                                height: Constant.episodevideoTitleImageHeight,
                                width: Constant.episodevideoTitleImageWidth,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(Constant.TWO),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          list[index],
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: Constant.playCircleRadius,
                                    child: Center(
                                      child: CircleAvatar(
                                        backgroundColor: Colors.black,
                                        radius: Constant.secondPlayCircleRadius,
                                        child: Icon(
                                          Icons.play_arrow,
                                          size: Constant.playCirclePlayIconSize,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: Constant.SIZE10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              title: Strings.socialorick,
                              color: Colors.white,
                              fontWight: FontWeight.bold,
                              fontfamily: Strings.emptyString,
                              fontSize: Constant.socialorickSize,
                            ),
                            CustomText(
                              topPadding: Constant.episodeLengthTopPadding,
                              title: Strings.minutes,
                              color: Colors.white
                                  .withOpacity(Constant.episodeLengthOpacity),
                              fontWight: FontWeight.w400,
                              fontfamily: Strings.emptyString,
                              fontSize: Constant.episodeLengthSIze,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.download_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: Constant.SIZE10,
                ),
                Column(
                  children: [
                    CustomText(
                      title: Strings.episodeDiscription,
                      color: AppTheme.colorWhite
                          .withOpacity(Constant.episodeLengthOpacity),
                      fontSize: Constant.descriptionSecondSize,
                      height: Constant.descriptionSecondHeight,
                      fontfamily: Strings.emptyString,
                      fontWight: FontWeight.w400,
                    ),
                  ],
                ),
                const SizedBox(
                  height: Constant.SIZE10,
                ),
              ],
            ),
          );
        });
  }

  @override
  void initState() {
    episodeVideoController.tabController =
        TabController(length: Constant.INT_TWO, vsync: this);
    super.initState();
  }
}
