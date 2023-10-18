import 'package:flutter/material.dart';
import 'package:netflix_clone/util/constants.dart';

class CustomButton extends StatefulWidget {
  final Color backgroundColor;
  final Widget child;

  final void Function()? onTap;
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.child,
      this.onTap});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: Constant.customButtonHeight,
        decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(3)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [widget.child],
        ),
      ),
    );
  }
}
