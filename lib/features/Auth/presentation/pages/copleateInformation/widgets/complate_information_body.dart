import 'package:artificial_app/core/utils/sizeconfig.dart';
import 'package:artificial_app/core/widgets/custombutton.dart';
import 'package:artificial_app/features/Auth/presentation/pages/copleateInformation/widgets/complate_information_item.dart';
import 'package:artificial_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class compleate_iformation_body extends StatelessWidget {
  const compleate_iformation_body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: Sizeconfig.defaultSize! * 5,
            ),
            compleate_iformation_item(text: S.of(context).enteryourname),
            SizedBox(
              height: Sizeconfig.defaultSize! * 2,
            ),
            compleate_iformation_item(text: S.of(context).enteryourphone),
            SizedBox(
              height: Sizeconfig.defaultSize! * 2,
            ),
            compleate_iformation_item(
                maxLines: 5, text: S.of(context).enteryouraddress),
            SizedBox(
              height: Sizeconfig.defaultSize! * 5,
            ),
            generalcustombutton(text: S.of(context).login, onTap: () {}),
          ],
        ),
      ),
    );
  }
}
