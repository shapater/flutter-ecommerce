import '../credit_card_and_debit_screen/widgets/listvolume_item_widget.dart';
import 'controller/credit_card_and_debit_controller.dart';
import 'models/listvolume_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application7/core/app_export.dart';
import 'package:muhammad_s_application7/widgets/app_bar/appbar_image.dart';
import 'package:muhammad_s_application7/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_s_application7/widgets/custom_button.dart';

class CreditCardAndDebitScreen extends GetWidget<CreditCardAndDebitController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlueGray300,
                    margin: getMargin(left: 16, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft16();
                    }),
                title: AppbarTitle(
                    text: "msg_credit_card_and".tr,
                    margin: getMargin(left: 12))),
            body: Padding(
                padding: getPadding(left: 16, top: 8, right: 16),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(14));
                    },
                    itemCount: controller.creditCardAndDebitModelObj.value
                        .listvolumeItemList.value.length,
                    itemBuilder: (context, index) {
                      ListvolumeItemModel model = controller
                          .creditCardAndDebitModelObj
                          .value
                          .listvolumeItemList
                          .value[index];
                      return ListvolumeItemWidget(model);
                    }))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_add_card".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50))));
  }

  onTapArrowleft16() {
    Get.back();
  }
}
