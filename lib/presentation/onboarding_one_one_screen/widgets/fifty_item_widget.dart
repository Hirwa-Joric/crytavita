import '../controller/onboarding_one_one_controller.dart';
import '../models/fifty_item_model.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FiftyItemWidget extends StatelessWidget {
  FiftyItemWidget(
    this.fiftyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FiftyItemModel fiftyItemModelObj;

  var controller = Get.find<OnboardingOneOneController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 273.h,
          margin: EdgeInsets.only(
            left: 12.h,
            right: 17.h,
          ),
          child: Text(
            "msg_emotionally_intelligent".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineSmall!.copyWith(
              height: 1.17,
            ),
          ),
        ),
        SizedBox(height: 12.v),
        SizedBox(
          width: 303.h,
          child: Text(
            "msg_up_to_date_weather".tr,
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
