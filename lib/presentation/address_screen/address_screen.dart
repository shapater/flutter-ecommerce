import '../address_screen/widgets/address_item_widget.dart';
import 'controller/address_controller.dart';
import 'models/address_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application7/core/app_export.dart';
import 'package:muhammad_s_application7/widgets/app_bar/appbar_image.dart';
import 'package:muhammad_s_application7/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_s_application7/widgets/custom_button.dart';

class AddressScreen extends GetWidget<AddressController> {
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
                    margin: getMargin(left: 16, top: 15, bottom: 16),
                    onTap: () {
                      onTapArrowleft8();
                    }),
                title: AppbarTitle(
                    text: "lbl_address".tr, margin: getMargin(left: 12))),
            body: Padding(
                padding: getPadding(left: 16, top: 17, right: 16),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(18));
                    },
                    itemCount: controller
                        .addressModelObj.value.addressItemList.value.length,
                    itemBuilder: (context, index) {
                      AddressItemModel model = controller
                          .addressModelObj.value.addressItemList.value[index];
                      return AddressItemWidget(model);
                    }))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_add_address".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50))));
  }

  onTapArrowleft8() {
    Get.back();
  }
}
