import 'package:artificial_app/constant/constants.dart';
import 'package:artificial_app/core/utils/sizeconfig.dart';
import 'package:flutter/material.dart';

class generalcustombutton extends StatelessWidget {
  generalcustombutton({super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primaryColor,
        ),
        child: Center(
            child: Text(
          text!,
          style: TextStyle(
              color: AppColors.backgroundColor,
              fontSize: FontSizes.medium,
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

class GeneralCustomButton extends StatelessWidget {
  // Add height, width, and fontSize parameters
  final String text;
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final double? fontSize;

  GeneralCustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.height = 40.0, // Default height if none is provided
    this.width = double.infinity, // Default width if none is provided
    this.fontSize = 16.0, // Default font size if none is provided
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height, // Use the passed height
        width: width, // Use the passed width
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primaryColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: AppColors.backgroundColor,
              fontSize: fontSize, // Use the passed font size
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon(
      {super.key,
      required this.text,
      this.icon,
      this.onTap,
      required this.color,
      this.textcolor});
  final String? text;
  final IconData? icon;
  final VoidCallback? onTap;
  final Color? color;
  final Color? textcolor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 60,
          width: Sizeconfig.screenHeight,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.primaryColor)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: AppColors.primaryColor,
                size: 40,
              ),
              SizedBox(
                width: Sizeconfig.defaultSize! * 0.5,
              ),
              Text(
                text!,
                style: TextStyle(
                    color: textcolor,
                    fontSize: FontSizes.large,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ],
          )),
    );
  }
}
