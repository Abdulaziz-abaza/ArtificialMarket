import 'package:artificial_app/core/utils/sizeconfig.dart';
import 'package:artificial_app/core/widgets/custombutton.dart';
import 'package:artificial_app/core/widgets/customdotindicator.dart';
import 'package:artificial_app/features/Auth/presentation/pages/Register/RegisterWithPhoneView.dart';
import 'package:artificial_app/features/Auth/presentation/pages/login/loginview.dart';
import 'package:artificial_app/features/onPording/presentation/widgets/custompageview.dart';
import 'package:artificial_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class onpordingviewbody extends StatefulWidget {
  const onpordingviewbody({super.key});

  @override
  State<onpordingviewbody> createState() => _onpordingviewbodyState();
}

class _onpordingviewbodyState extends State<onpordingviewbody> {
  PageController? controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPageView(
            controller: controller!,
          ),
          Customdotindicator(
            // dotIndex:  controller!.page!.round(),
            dotIndex: controller!.hasClients ? controller!.page!.round() : 0,
          ),
          Positioned(
              top: Sizeconfig.defaultSize! * 10,
              right: 32,
              child: Visibility(
                visible: controller!.hasClients
                    ? (controller!.page == 2 ? false : true)
                    : true,
                child: TextButton(
                    onPressed: () {
                      Get.to(() => const loginView(),
                          transition: Transition.leftToRightWithFade);
                      print("nexddddddt");

                      print("skip");
                    },
                    child: Text(S.of(context).skip)),
              )),
          Positioned(
              bottom: Sizeconfig.defaultSize! * 2,
              left: Sizeconfig.defaultSize! * 2,
              right: Sizeconfig.defaultSize! * 2,
              child: Column(
                children: [
                  generalcustombutton(
                    onTap: () {
                      print('ddddddd');
                      if (controller!.page! < 2) {
                        controller!.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease);
                        print("next");
                      } else {
                        Get.to(() => const loginView(),
                            transition: Transition.leftToRightWithFade);
                        print("nexddddddt");
                      }
                    },
                    text: controller!.hasClients
                        ? (controller!.page == 2
                            ? S.of(context).getStarted
                            : S.of(context).next)
                        : S.of(context).next,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  generalcustombutton(
                    onTap: () {
                      print('ddddddd');
                      if (controller!.page! < 2) {
                        controller!.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease);
                        print("next");
                      } else {
                        Get.to(() => const RegisterWithPhoneView(),
                            transition: Transition.leftToRightWithFade);
                        print("nexddddddt");
                      }
                    },
                    text: "Register with Mobile number",
                    // controller!.hasClients
                    //     ? (controller!.page == 2
                    //         ? S.of(context).getStarted
                    //         : S.of(context).registerWithPhoneNumber)
                    //     : S.of(context).next,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
