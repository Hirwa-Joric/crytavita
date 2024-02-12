import '../controller/default_state_one_controller.dart';
import '../models/defaultstateone_item_model.dart';
import 'package:crytavita/core/app_export.dart';
import 'package:crytavita/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DefaultstateoneItemWidget extends StatelessWidget {
  DefaultstateoneItemWidget(
    this.defaultstateoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DefaultstateoneItemModel defaultstateoneItemModelObj;

  var controller = Get.find<DefaultStateOneController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => CustomIconButton(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(13.h),
            decoration: IconButtonStyleHelper.fillPrimaryContainer,
            child: CustomImageView(
              imagePath: defaultstateoneItemModelObj.fiSrSquareRoot!.value,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  defaultstateoneItemModelObj.samantha!.value,
                  style: CustomTextStyles.titleMediumOnErrorContainerMedium,
                ),
              ),
              SizedBox(height: 1.v),
              Opacity(
                opacity: 0.5,
                child: Obx(
                  () => Text(
                    defaultstateoneItemModelObj.ngopiSore!.value,
                    style: CustomTextStyles.labelLargeBluegray500,
                  ),
                ),
              ),
            ],
          ),
        ),
        Obx(
          () => CustomImageView(
            imagePath: defaultstateoneItemModelObj.image!.value,
            height: 32.adaptSize,
            width: 32.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 9.v),
          ),
        ),
      ],
    );
  }
}
