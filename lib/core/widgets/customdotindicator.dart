import 'package:artificial_app/constant/constants.dart';
import 'package:artificial_app/core/utils/sizeconfig.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class Customdotindicator extends StatelessWidget {
  const Customdotindicator({super.key, required this.dotIndex});
  final int dotIndex;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: Sizeconfig.defaultSize! * 20,
      child: DotsIndicator(
        decorator: DotsDecorator(
            size: Size(
                Sizeconfig.defaultSize! * 2.5, Sizeconfig.defaultSize! * 0.6),
            activeColor: AppColors.primaryColor,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
                side: BorderSide(color: AppColors.primaryColor))),
        dotsCount: 3,
        //  position:0,
        //  position: dotIndex,
        position: dotIndex,
      ),
    );
  }
}
