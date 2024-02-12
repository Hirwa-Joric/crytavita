import '../controller/onboarding_one_three_controller.dart';
import '../models/sixtysix_item_model.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SixtysixItemWidget extends StatelessWidget {
  SixtysixItemWidget(
    this.sixtysixItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SixtysixItemModel sixtysixItemModelObj;

  var controller = Get.find<OnboardingOneThreeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "msg_guardian_soil_insights".tr,
          style: theme.textTheme.headlineSmall,
        ),
        SizedBox(height: 32.v),
        SizedBox(
          width: 298.h,
          child: Text(
            "msg_cryptavita_provides".tr,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodyMediumBluegray50013.copyWith(
              height: 1.69,
            ),
          ),
        ),
      ],
    );
  }
}
