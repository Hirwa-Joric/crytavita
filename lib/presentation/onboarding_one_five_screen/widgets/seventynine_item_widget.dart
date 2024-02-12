import '../controller/onboarding_one_five_controller.dart';
import '../models/seventynine_item_model.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SeventynineItemWidget extends StatelessWidget {
  SeventynineItemWidget(
    this.seventynineItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SeventynineItemModel seventynineItemModelObj;

  var controller = Get.find<OnboardingOneFiveController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "msg_weather_data_integration".tr,
          style: theme.textTheme.headlineSmall,
        ),
        SizedBox(height: 32.v),
        Container(
          width: 303.h,
          margin: EdgeInsets.only(left: 12.h),
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
