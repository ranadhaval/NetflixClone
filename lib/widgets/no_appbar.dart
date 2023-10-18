import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color colors;
  final Brightness statusBarIconBrightness;
  final Brightness statusBarBrightness;

  const NoAppBar(
      {Key? key,
      this.colors = Colors.transparent,
      this.statusBarBrightness = Brightness.light,
      this.statusBarIconBrightness = Brightness.light})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(0);

  @override
  Widget build(
    BuildContext context,
  ) {
    return AppBar(
      backgroundColor: colors,
      elevation: 0.0,
      toolbarHeight: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: colors,
        statusBarIconBrightness:
            statusBarIconBrightness, // For Android (dark icons)
        statusBarBrightness: statusBarBrightness, // For iOS (dark icons)
      ),
    );
  }
}
