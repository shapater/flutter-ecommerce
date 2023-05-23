import '../favorite_product_screen/widgets/favorite_item_widget.dart';
import 'controller/favorite_product_controller.dart';
import 'models/favorite_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application7/core/app_export.dart';
import 'package:muhammad_s_application7/widgets/app_bar/appbar_image.dart';
import 'package:muhammad_s_application7/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_s_application7/widgets/app_bar/custom_app_bar.dart';

class FavoriteProductScreen extends GetWidget<FavoriteProductController> {
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
                      onTapArrowleft15();
                    }),
                title: AppbarTitle(
                    text: "msg_favorite_product".tr,
                    margin: getMargin(left: 12))),
            body: Padding(
                padding: getPadding(left: 16, top: 8, right: 16),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(283),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(13),
                        crossAxisSpacing: getHorizontalSize(13)),
                    physics: BouncingScrollPhysics(),
                    itemCount: controller.favoriteProductModelObj.value
                        .favoriteItemList.value.length,
                    itemBuilder: (context, index) {
                      FavoriteItemModel model = controller
                          .favoriteProductModelObj
                          .value
                          .favoriteItemList
                          .value[index];
                      return FavoriteItemWidget(model);
                    })))));
  }

  onTapArrowleft15() {
    Get.back();
  }
}
