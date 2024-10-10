import 'package:artificial_app/constant/constants.dart';
import 'package:artificial_app/core/utils/sizeconfig.dart';
import 'package:artificial_app/features/onPording/presentation/widgets/onpordingbody.dart';
import 'package:artificial_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    fadingAnimation = Tween(begin: 0.1, end: 1.0).animate(animationController!);
    animationController!.repeat(reverse: true);

    goToNextView();
  }

  void dispose() {
    animationController?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          FadeTransition(
              opacity: fadingAnimation!,
              child: Text(
                "Artificial Market",
                // S.of(context).titleSplash,
                style: const TextStyle(
                    fontSize: FontSizes.large,
                    color: AppColors.backgroundColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'poppins'),
              )),
          Image.asset('assets/sasd.png', fit: BoxFit.cover),
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => const onpordingviewbody(), transition: Transition.fade);
    });
  }
}
