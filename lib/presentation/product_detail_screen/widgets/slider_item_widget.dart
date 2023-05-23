import '../controller/product_detail_controller.dart';
import '../models/slider_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  SliderItemWidget(this.sliderItemModelObj);

  SliderItemModel sliderItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgProductimage238x375,
      height: getVerticalSize(
        238,
      ),
      width: getHorizontalSize(
        375,
      ),
    );
  }
}
