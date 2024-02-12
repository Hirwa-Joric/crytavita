import '../controller/onboarding_one_four_controller.dart';
import '../models/sixtynine_item_model.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SixtynineItemWidget extends StatelessWidget {
  SixtynineItemWidget(
    this.sixtynineItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SixtynineItemModel sixtynineItemModelObj;

  var controller = Get.find<OnboardingOneFourController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 180.h,
          margin: EdgeInsets.only(left: 45.h),
          child: Text(
            "msg_community_empowerment".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineSmall!.copyWith(
              height: 1.17,
            ),
          ),
        ),
        SizedBox(height: 2.v),
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
