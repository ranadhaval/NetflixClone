import 'package:flutter/material.dart';
import 'package:netflix_clone/theme/app_theme.dart';
import 'package:netflix_clone/util/_string.dart';
import 'package:netflix_clone/util/constants.dart';
import 'package:netflix_clone/widgets/custom_text.dart';

Widget options(
    {IconData? icon,
    String? title,
    bool isDowalod = false,
    required double iconSize,
    void Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: isDowalod ? Constant.SIZE10 : Constant.zero,
        ),
        SizedBox(
          height: Constant.optionIconContainerSize,
          width: Constant.optionIconContainerSize,
          child: Padding(
            padding: const EdgeInsets.only(left: Constant.FIVE),
            child: Icon(
              icon,
              size: iconSize,
              color: AppTheme.colorWhite,
            ),
          ),
        ),
        const SizedBox(
          height: Constant.FIVE,
        ),
        SizedBox(
          width: Constant.optionTextWidth,
          child: Center(
            child: CustomText(
              leftPadding: Constant.FIVE,
              title: title!,
              color:
                  AppTheme.colorWhite.withOpacity(Constant.optionTextOpacity),
              fontSize: Constant.SIZE10,
              fontfamily: Strings.emptyString,
              height: Constant.optionTextHeight,
              fontWight: FontWeight.w400,
            ),
          ),
        ),
      ],
    ),
  );
}
