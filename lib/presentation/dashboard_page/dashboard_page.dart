import '../dashboard_page/widgets/categories_item_widget.dart';
import '../dashboard_page/widgets/dashboard_item_widget.dart';
import '../dashboard_page/widgets/flashsale_item_widget.dart';
import '../dashboard_page/widgets/megasale_item_widget.dart';
import '../dashboard_page/widgets/sliderofferbann_item_widget.dart';
import 'controller/dashboard_controller.dart';
import 'models/categories_item_model.dart';
import 'models/dashboard_item_model.dart';
import 'models/dashboard_model.dart';
import 'models/flashsale_item_model.dart';
import 'models/megasale_item_model.dart';
import 'models/sliderofferbann_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_s_application7/core/app_export.dart';
import 'package:muhammad_s_application7/widgets/app_bar/appbar_image.dart';
import 'package:muhammad_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DashboardPage extends StatelessWidget {
  DashboardController controller =
      Get.put(DashboardController(DashboardModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            59,
          ),
          leadingWidth: 48,
          leading: AppbarImage(
            height: getSize(
              16,
            ),
            width: getSize(
              16,
            ),
            svgPath: ImageConstant.imgSearch,
            margin: getMargin(
              left: 32,
              top: 20,
              bottom: 20,
            ),
          ),
          title: Padding(
            padding: getPadding(
              left: 8,
            ),
            child: Text(
              "lbl_search_product".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular12Bluegray300.copyWith(
                letterSpacing: getHorizontalSize(
                  0.5,
                ),
              ),
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
              svgPath: ImageConstant.imgLocation,
              margin: getMargin(
                left: 16,
                top: 16,
                right: 16,
              ),
            ),
            Container(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              margin: getMargin(
                left: 16,
                top: 16,
                right: 32,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  AppbarImage(
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    svgPath: ImageConstant.imgNotificationiconBlueGray300,
                  ),
                  AppbarImage(
                    height: getSize(
                      8,
                    ),
                    width: getSize(
                      8,
                    ),
                    svgPath: ImageConstant.imgClose,
                    margin: getMargin(
                      left: 14,
                      right: 2,
                      bottom: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 27,
            ),
            child: Padding(
              padding: getPadding(
                left: 16,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      right: 16,
                    ),
                    child: Obx(
                      () => CarouselSlider.builder(
                        options: CarouselOptions(
                          height: getVerticalSize(
                            206,
                          ),
                          initialPage: 0,
                          autoPlay: true,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: false,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            controller.silderIndex.value = index;
                          },
                        ),
                        itemCount: controller.dashboardModelObj.value
                            .sliderofferbannItemList.value.length,
                        itemBuilder: (context, index, realIndex) {
                          SliderofferbannItemModel model = controller
                              .dashboardModelObj
                              .value
                              .sliderofferbannItemList
                              .value[index];
                          return SliderofferbannItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Obx(
                    () => Container(
                      height: getVerticalSize(
                        8,
                      ),
                      margin: getMargin(
                        left: 135,
                        top: 16,
                      ),
                      child: AnimatedSmoothIndicator(
                        activeIndex: controller.silderIndex.value,
                        count: controller.dashboardModelObj.value
                            .sliderofferbannItemList.value.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 8,
                          activeDotColor: ColorConstant.lightBlueA200,
                          dotColor: ColorConstant.blue50,
                          dotHeight: getVerticalSize(
                            8,
                          ),
                          dotWidth: getHorizontalSize(
                            8,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 25,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_category".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.5,
                            ),
                          ),
                        ),
                        Text(
                          "lbl_more_category".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtPoppinsBold14LightblueA200.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        118,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            top: 10,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                12,
                              ),
                            );
                          },
                          itemCount: controller.dashboardModelObj.value
                              .categoriesItemList.value.length,
                          itemBuilder: (context, index) {
                            CategoriesItemModel model = controller
                                .dashboardModelObj
                                .value
                                .categoriesItemList
                                .value[index];
                            return CategoriesItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 23,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_flash_sale".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.5,
                            ),
                          ),
                        ),
                        Text(
                          "lbl_see_more".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtPoppinsBold14LightblueA200.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        250,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            top: 12,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                16,
                              ),
                            );
                          },
                          itemCount: controller.dashboardModelObj.value
                              .flashsaleItemList.value.length,
                          itemBuilder: (context, index) {
                            FlashsaleItemModel model = controller
                                .dashboardModelObj
                                .value
                                .flashsaleItemList
                                .value[index];
                            return FlashsaleItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 23,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Text(
                            "lbl_mega_sale".tr,
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
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_see_more".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtPoppinsBold14LightblueA200.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        248,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            top: 10,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                16,
                              ),
                            );
                          },
                          itemCount: controller.dashboardModelObj.value
                              .megasaleItemList.value.length,
                          itemBuilder: (context, index) {
                            MegasaleItemModel model = controller
                                .dashboardModelObj
                                .value
                                .megasaleItemList
                                .value[index];
                            return MegasaleItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
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
                    margin: getMargin(
                      top: 29,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 16,
                      right: 16,
                    ),
                    child: Obx(
                      () => GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(
                            283,
                          ),
                          crossAxisCount: 2,
                          mainAxisSpacing: getHorizontalSize(
                            13,
                          ),
                          crossAxisSpacing: getHorizontalSize(
                            13,
                          ),
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.dashboardModelObj.value
                            .dashboardItemList.value.length,
                        itemBuilder: (context, index) {
                          DashboardItemModel model = controller
                              .dashboardModelObj
                              .value
                              .dashboardItemList
                              .value[index];
                          return DashboardItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
