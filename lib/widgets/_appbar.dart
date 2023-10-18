import 'package:flutter/material.dart';
import 'package:netflix_clone/theme/app_theme.dart';
import 'package:netflix_clone/util/constants.dart';

appBar({double topPadding = 0, void Function()? onTap}) => Padding(
      padding: EdgeInsets.only(
          left: Constant.appbarLeftPadding,
          right: Constant.appbarRightPadding,
          top: topPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onTap,
            child: const Icon(
              Icons.arrow_back,
              color: AppTheme.colorWhite,
            ),
          ),
          const Icon(
            Icons.search,
            color: AppTheme.colorWhite,
          )
        ],
      ),
    );
