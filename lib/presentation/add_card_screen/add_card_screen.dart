import 'controller/add_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application7/core/app_export.dart';
import 'package:muhammad_s_application7/core/utils/validation_functions.dart';
import 'package:muhammad_s_application7/widgets/app_bar/appbar_image.dart';
import 'package:muhammad_s_application7/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_s_application7/widgets/custom_button.dart';
import 'package:muhammad_s_application7/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddCardScreen extends GetWidget<AddCardController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                      onTapArrowleft10();
                    }),
                title: AppbarTitle(
                    text: "lbl_add_card".tr, margin: getMargin(left: 12))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 27, right: 16, bottom: 27),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("lbl_card_number".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.cardnumberoneController,
                              hintText: "msg_enter_card_number".tr,
                              margin: getMargin(top: 12),
                              textInputType: TextInputType.number,
                              validator: (value) {
                                if (!isNumeric(value)) {
                                  return "Please enter valid number";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(top: 24),
                              child: Text("lbl_expiration_date".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold14Indigo900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.5)))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.expirationdateController,
                              hintText: "lbl_expiration_date".tr,
                              margin: getMargin(top: 11),
                              padding: TextFormFieldPadding.PaddingAll15),
                          Padding(
                              padding: getPadding(top: 29),
                              child: Text("lbl_security_code".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold14Indigo900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.5)))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.securitycodeController,
                              hintText: "lbl_security_code".tr,
                              margin: getMargin(top: 11),
                              padding: TextFormFieldPadding.PaddingAll15),
                          Padding(
                              padding: getPadding(top: 23),
                              child: Text("lbl_card_holder".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold14Indigo900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.5)))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.cardnumbertwoController,
                              hintText: "msg_enter_card_number".tr,
                              margin: getMargin(top: 12, bottom: 5),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.number,
                              validator: (value) {
                                if (!isNumeric(value)) {
                                  return "Please enter valid number";
                                }
                                return null;
                              })
                        ]))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_add_card".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50))));
  }

  onTapArrowleft10() {
    Get.back();
  }
}
