import '../controller/onboarding_one_two_controller.dart';
import '../models/fiftytwo_item_model.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FiftytwoItemWidget extends StatelessWidget {
  FiftytwoItemWidget(
    this.fiftytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FiftytwoItemModel fiftytwoItemModelObj;

  var controller = Get.find<OnboardingOneTwoController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 283.h,
          margin: EdgeInsets.only(
            left: 9.h,
            right: 10.h,
          ),
          child: Text(
            "msg_innovative_road".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineSmall!.copyWith(
              height: 1.17,
            ),
          ),
        ),
        SizedBox(height: 8.v),
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
