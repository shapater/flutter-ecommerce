import '../controller/cart_controller.dart';
import '../models/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  CartItemWidget(this.cartItemModelObj);

  CartItemModel cartItemModelObj;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 15,
        bottom: 15,
      ),
      decoration: AppDecoration.outlineBlue50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgProductdetails,
            height: getSize(
              72,
            ),
            width: getSize(
              72,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                5,
              ),
            ),
            margin: getMargin(
              top: 1,
              bottom: 1,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      150,
                    ),
                    child: Text(
                      "msg_nike_air_zoom_pegasus".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold12.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgLoveicon,
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    margin: getMargin(
                      left: 20,
                      bottom: 10,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgTrashicon,
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    margin: getMargin(
                      left: 8,
                      bottom: 10,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  top: 17,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                      ),
                      child: Text(
                        "lbl_299_43".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold12LightblueA200.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.5,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgFolder,
                      height: getVerticalSize(
                        20,
                      ),
                      width: getHorizontalSize(
                        33,
                      ),
                      margin: getMargin(
                        left: 67,
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        20,
                      ),
                      width: getHorizontalSize(
                        41,
                      ),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getVerticalSize(
                                20,
                              ),
                              width: getHorizontalSize(
                                41,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.blue50,
                                border: Border.all(
                                  color: ColorConstant.blue50,
                                  width: getHorizontalSize(
                                    1,
                                  ),
                                  strokeAlign: strokeAlignCenter,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: getPadding(
                                right: 17,
                              ),
                              child: Text(
                                "lbl_1".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular12Indigo90087
                                    .copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.06,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgComputer,
                      height: getVerticalSize(
                        20,
                      ),
                      width: getHorizontalSize(
                        33,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
