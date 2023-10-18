import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:netflix_clone/Pages/EpisodeDetails/episode_controller.dart';
import 'package:netflix_clone/routes/app_routes.dart';
import 'package:netflix_clone/theme/app_theme.dart';
import 'package:netflix_clone/util/_string.dart';
import 'package:netflix_clone/util/array_list.dart';
import 'package:netflix_clone/util/constants.dart';
import 'package:netflix_clone/widgets/Custombutton.dart';
import 'package:netflix_clone/widgets/_appbar.dart';
import 'package:netflix_clone/widgets/custom_text.dart';
import 'package:netflix_clone/widgets/options.dart';

class EpisodeDetail extends StatefulWidget {
  const EpisodeDetail({super.key});

  @override
  State<EpisodeDetail> createState() => _EpisodeDetailState();
}

class _EpisodeDetailState extends State<EpisodeDetail>
    with TickerProviderStateMixin {
  @override
  void initState() {
    episodeController.tabController =
        TabController(length: Constant.INT_TWO, vsync: this);
    super.initState();
  }

  final episodeController = Get.put(EpisodeController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: episodeController,
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppTheme.colorblack,
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: Constant.episodeDetailBodyLeftPadding,
                    right: Constant.episodeDetailBodyRightPadding,
                    top: Constant.episodeDetailBodyTopPadding),
                child: Column(
                  children: [
                    appBar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomText(
                          topPadding: Constant.rickAndMortyTopPadding,
                          title: Strings.rickAndMorty,
                          color: AppTheme.colorWhite,
                          fontSize: Constant.episodeTitleSize,
                          fontfamily: Strings.emptyString,
                          fontWight: FontWeight.bold,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: Constant.SIZE10,
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
                              bottom: Constant.languageLabelBottomPadding),
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
                              border: Border.all(color: AppTheme.colorWhite)),
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
                          topPadding: Constant.episodeSubTitleTopPadding,
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
                      backgroundColor: AppTheme.greyColor.withOpacity(0.6),
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
                      fontSize: Constant.episodeDescriptionSize,
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
                height: Constant.SIZE30,
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
                      padding: EdgeInsets.only(left: Constant.tabBarPadding),
                      indicatorColor: AppTheme.colorRed,
                      indicatorWeight: Constant.inidcatorWeight,
                      indicatorSize: TabBarIndicatorSize.label,
                      controller: episodeController.tabController,
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
              Expanded(
                child: TabBarView(
                  controller: episodeController.tabController,
                  children: [
                    gridView(list: episodes),
                    gridView(list: moreLike)
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget gridView({
    int crossAxisCount = Constant.INT_THREE,
    double topPadding = Constant.FIVE,
    double crossAxisSpaning = Constant.SIZE15,
    double mainAxisSpaning = Constant.SIZE15,
    int crossAxisCellCount = Constant.INT_ONE,
    required List<String> list,
  }) {
    return StaggeredGridView.countBuilder(
        crossAxisCount: crossAxisCount,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(top: topPadding),
        crossAxisSpacing: crossAxisSpaning,
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        mainAxisSpacing: mainAxisSpaning,
        itemCount: list.length,
        staggeredTileBuilder: (index) {
          return StaggeredTile.fit(crossAxisCellCount);
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: Constant.gridviewContainerSize,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(Constant.gridviewContainerRadius),
                image: DecorationImage(
                    image: AssetImage(
                      list[index],
                    ),
                    fit: BoxFit.cover)),
          );
        });
  }
}
