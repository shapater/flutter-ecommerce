import '../filter_screen/widgets/buyingformate_item_widget.dart';
import '../filter_screen/widgets/itemlocation_item_widget.dart';
import '../filter_screen/widgets/showonly_item_widget.dart';
import 'controller/filter_controller.dart';
import 'models/buyingformate_item_model.dart';
import 'models/itemlocation_item_model.dart';
import 'models/showonly_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application7/core/app_export.dart';
import 'package:muhammad_s_application7/widgets/app_bar/appbar_image.dart';
import 'package:muhammad_s_application7/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_s_application7/widgets/custom_button.dart';
import 'package:muhammad_s_application7/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FilterScreen extends GetWidget<FilterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56,
          ),
          leadingWidth: 42,
          leading: AppbarImage(
            height: getVerticalSize(
              23,
            ),
            width: getHorizontalSize(
              24,
            ),
            svgPath: ImageConstant.imgCloseicon,
            margin: getMargin(
              left: 18,
              top: 16,
              bottom: 16,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_filter_search".tr,
            margin: getMargin(
              left: 12,
            ),
          ),
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 31,
            ),
            child: Padding(
              padding: getPadding(
                left: 16,
                right: 16,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_price_range".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold14Indigo900.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 11,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: controller.priceController,
                            hintText: "lbl_1_245".tr,
                            margin: getMargin(
                              right: 6,
                            ),
                            padding: TextFormFieldPadding.PaddingAll15,
                            fontStyle: TextFormFieldFontStyle.PoppinsBold12,
                          ),
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: controller.priceoneController,
                            hintText: "lbl_9_344".tr,
                            margin: getMargin(
                              left: 6,
                            ),
                            padding: TextFormFieldPadding.PaddingAll15,
                            fontStyle: TextFormFieldFontStyle.PoppinsBold12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 34,
                    ),
                    child: Text(
                      "lbl_condition".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold14Indigo900.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.conditiononeController,
                    margin: getMargin(
                      top: 13,
                      right: 82,
                    ),
                    textInputAction: TextInputAction.done,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "lbl_buying_format".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold14Indigo900.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 11,
                    ),
                    child: Obx(
                      () => Wrap(
                        runSpacing: getVerticalSize(
                          5,
                        ),
                        spacing: getHorizontalSize(
                          5,
                        ),
                        children: List<Widget>.generate(
                          controller.filterModelObj.value.buyingformateItemList
                              .value.length,
                          (index) {
                            BuyingformateItemModel model = controller
                                .filterModelObj
                                .value
                                .buyingformateItemList
                                .value[index];

                            return BuyingformateItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 22,
                    ),
                    child: Text(
                      "lbl_item_location".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold14Indigo900.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 13,
                    ),
                    child: Obx(
                      () => Wrap(
                        runSpacing: getVerticalSize(
                          5,
                        ),
                        spacing: getHorizontalSize(
                          5,
                        ),
                        children: List<Widget>.generate(
                          controller.filterModelObj.value.itemlocationItemList
                              .value.length,
                          (index) {
                            ItemlocationItemModel model = controller
                                .filterModelObj
                                .value
                                .itemlocationItemList
                                .value[index];

                            return ItemlocationItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 25,
                    ),
                    child: Text(
                      "lbl_show_only".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold14Indigo900.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: Obx(
                      () => Wrap(
                        runSpacing: getVerticalSize(
                          5,
                        ),
                        spacing: getHorizontalSize(
                          5,
                        ),
                        children: List<Widget>.generate(
                          controller.filterModelObj.value.showonlyItemList.value
                              .length,
                          (index) {
                            ShowonlyItemModel model = controller.filterModelObj
                                .value.showonlyItemList.value[index];

                            return ShowonlyItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomButton(
          height: getVerticalSize(
            57,
          ),
          text: "lbl_apply".tr,
          margin: getMargin(
            left: 16,
            right: 16,
            bottom: 50,
          ),
        ),
      ),
    );
  }
}
