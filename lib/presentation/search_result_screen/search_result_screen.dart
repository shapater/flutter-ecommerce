import 'controller/search_result_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application7/core/app_export.dart';
import 'package:muhammad_s_application7/widgets/app_bar/appbar_image.dart';
import 'package:muhammad_s_application7/widgets/app_bar/appbar_searchview_2.dart';
import 'package:muhammad_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_s_application7/widgets/custom_button.dart';
import 'package:muhammad_s_application7/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class SearchResultScreen extends GetWidget<SearchResultController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            67,
          ),
          title: Obx(
            () => AppbarSearchview2(
              margin: getMargin(
                left: 16,
              ),
              hintText: "lbl_search_product".tr,
              controller: controller.searchController,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              svgPath: ImageConstant.imgSort,
              margin: getMargin(
                left: 16,
                top: 16,
                right: 16,
              ),
            ),
            AppbarImage(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              svgPath: ImageConstant.imgFilter,
              margin: getMargin(
                left: 16,
                top: 16,
                right: 32,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 11,
            bottom: 11,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Divider(
                height: getVerticalSize(
                  1,
                ),
                thickness: getVerticalSize(
                  1,
                ),
                color: ColorConstant.blue50,
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 15,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 4,
                      ),
                      child: Text(
                        "lbl_0_result".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold12Indigo90087.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.5,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 3,
                      ),
                      child: Text(
                        "lbl_man_shoes".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold12.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.5,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgDownicon,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        left: 8,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomIconButton(
                height: 72,
                width: 72,
                variant: IconButtonVariant.OutlineLightblueA2003d,
                padding: IconButtonPadding.PaddingAll28,
                child: CustomImageView(
                  svgPath: ImageConstant.imgAirplane,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                ),
                child: Text(
                  "msg_product_not_found".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold24Indigo900.copyWith(
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
                child: Text(
                  "msg_thank_you_for_shopping".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular12Bluegray300.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.5,
                    ),
                  ),
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  57,
                ),
                text: "lbl_back_to_home".tr,
                margin: getMargin(
                  left: 16,
                  top: 16,
                  right: 16,
                  bottom: 281,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
