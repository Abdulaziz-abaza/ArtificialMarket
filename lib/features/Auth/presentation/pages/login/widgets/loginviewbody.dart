import 'package:artificial_app/constant/constants.dart';
import 'package:artificial_app/core/utils/sizeconfig.dart';
import 'package:artificial_app/core/widgets/custombutton.dart';
import 'package:artificial_app/features/Auth/presentation/pages/copleateInformation/compleate_iformation_view.dart';
import 'package:artificial_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginviewbody extends StatelessWidget {
  const loginviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(),
            ],
          ),
          SizedBox(
            height: Sizeconfig.defaultSize! * 2,
          ),
          Text("Login",
              style: TextStyle(
                fontSize: FontSizes.extraLarge,
                fontWeight: FontWeight.bold,
                fontFamily: 'poppins',
                color: AppColors.primaryColor,
              )),
          SizedBox(
            height: Sizeconfig.defaultSize! * 2,
          ),
          Row(
            children: [
              SizedBox(),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButtonWithIcon(
                      text: S.of(context).googlelogin,
                      color: Colors.transparent,
                      icon: Icons.mail,
                      onTap: () {
                        Get.to(() => compleate_iformation_view(),
                            duration: Duration(seconds: 1),
                            transition: Transition.rightToLeft);
                        print('object');
                      }),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButtonWithIcon(
                      text: S.of(context).facebooklogin,
                      color: Colors.transparent,
                      icon: Icons.facebook,
                      onTap: () {
                        Get.to(() => compleate_iformation_view(),
                            duration: Duration(seconds: 1),
                            transition: Transition.rightToLeft);
                      }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
