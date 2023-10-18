import 'package:flutter/material.dart';
import 'package:netflix_clone/theme/app_theme.dart';
import 'package:netflix_clone/util/_string.dart';
import 'package:netflix_clone/util/constants.dart';
import 'package:netflix_clone/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({super.key});

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  VideoPlayerController? _controller;
  Future<void>? _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
        "https://www.mobiles24.co/metapreview.php?id=590592&cat=106&h=12697728");
    _initializeVideoPlayerFuture = _controller!.initialize();
    _controller!.setLooping(true);
    _controller!.setVolume(1.0);
    _controller!.play();
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, dtype) {
      double mediawidth = MediaQuery.of(context).size.width;
      bool isPortrait = orientation == Orientation.portrait;

      if (isPortrait) {
        height = 100.h;
        width = 100.w;
      } else {
        height = 100.w;
        width = 100.h;
      }
      return FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Container(
              child: isPortrait
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: AspectRatio(
                            aspectRatio: 15 / 8,
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (_controller!.value.isPlaying) {
                                      _controller!.pause();
                                    } else {
                                      _controller!.play();
                                    }
                                  });
                                },
                                child: VideoPlayer(_controller!)),
                          ),
                        ),
                      ],
                    )
                  : SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: SizedBox(
                              height: 220,
                              width: mediawidth / 1.5,
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (_controller!.value.isPlaying) {
                                        _controller!.pause();
                                      } else {
                                        _controller!.play();
                                      }
                                    });
                                  },
                                  child: VideoPlayer(_controller!)),
                            ),
                          ),
                        ],
                      ),
                    ),
            );
          } else {
            return Center(
              child: SizedBox(
                  width: width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                            title: Strings.videoIsLoading,
                            color: AppTheme.colorWhite,
                            fontfamily: Strings.emptyString,
                          ),
                          const SizedBox(
                            width: Constant.SIZE20,
                          ),
                          const SizedBox(
                            height: Constant.SIZE20,
                            width: Constant.SIZE20,
                            child: CircularProgressIndicator(
                              color: AppTheme.colorWhite,
                              strokeWidth: Constant.TWO,
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            );
          }
        },
      );
    });
  }
}
