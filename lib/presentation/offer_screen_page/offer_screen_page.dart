import 'controller/offer_screen_controller.dart';
import 'models/offer_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application7/core/app_export.dart';
import 'package:muhammad_s_application7/widgets/app_bar/appbar_image.dart';
import 'package:muhammad_s_application7/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_s_application7/widgets/app_bar/custom_app_bar.dart';

class OfferScreenPage extends StatelessWidget {
  OfferScreenController controller =
      Get.put(OfferScreenController(OfferScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            65,
          ),
          title: AppbarTitle(
            text: "lbl_offer".tr,
            margin: getMargin(
              left: 16,
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
              svgPath: ImageConstant.imgNotificationiconBlueGray300,
              margin: getMargin(
                left: 13,
                top: 16,
                right: 13,
                bottom: 15,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 28,
            right: 16,
            bottom: 28,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  width: getHorizontalSize(
                    343,
                  ),
                  padding: getPadding(
                    left: 16,
                    top: 17,
                    right: 16,
                    bottom: 17,
                  ),
                  decoration: AppDecoration.fillLightblueA200.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          201,
                        ),
                        child: Text(
                          "msg_use_megsl_cupon".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold16WhiteA700.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  206,
                ),
                width: getHorizontalSize(
                  343,
                ),
                margin: getMargin(
                  top: 16,
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPromotionimage,
                      height: getVerticalSize(
                        206,
                      ),
                      width: getHorizontalSize(
                        343,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          5,
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 24,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: getHorizontalSize(
                                209,
                              ),
                              child: Text(
                                "msg_super_flash_sale_50".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsBold24.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.5,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 31,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: getHorizontalSize(
                                      42,
                                    ),
                                    padding: getPadding(
                                      left: 9,
                                      top: 8,
                                      right: 9,
                                      bottom: 8,
                                    ),
                                    decoration:
                                        AppDecoration.txtFillWhiteA700.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtRoundedBorder5,
                                    ),
                                    child: Text(
                                      "lbl_08".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold16.copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 4,
                                      top: 10,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "lbl".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14.copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.07,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      42,
                                    ),
                                    margin: getMargin(
                                      left: 4,
                                    ),
                                    padding: getPadding(
                                      left: 9,
                                      top: 8,
                                      right: 9,
                                      bottom: 8,
                                    ),
                                    decoration:
                                        AppDecoration.txtFillWhiteA700.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtRoundedBorder5,
                                    ),
                                    child: Text(
                                      "lbl_34".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold16.copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 4,
                                      top: 10,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "lbl".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14.copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.07,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      42,
                                    ),
                                    margin: getMargin(
                                      left: 4,
                                    ),
                                    padding: getPadding(
                                      left: 10,
                                      top: 8,
                                      right: 10,
                                      bottom: 8,
                                    ),
                                    decoration:
                                        AppDecoration.txtFillWhiteA700.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtRoundedBorder5,
                                    ),
                                    child: Text(
                                      "lbl_52".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold16.copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  206,
                ),
                width: getHorizontalSize(
                  343,
                ),
                margin: getMargin(
                  top: 16,
                  bottom: 5,
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPromotionimage206x343,
                      height: getVerticalSize(
                        206,
                      ),
                      width: getHorizontalSize(
                        343,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          5,
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 24,
                          top: 31,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: getHorizontalSize(
                                252,
                              ),
                              child: Text(
                                "msg_90_off_super_mega".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsBold24.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.5,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 21,
                              ),
                              child: Text(
                                "msg_special_birthday".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
