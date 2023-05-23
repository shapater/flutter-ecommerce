import 'package:get/get.dart';
import 'sliderofferbann_item_model.dart';
import 'categories_item_model.dart';
import 'flashsale_item_model.dart';
import 'megasale_item_model.dart';
import 'dashboard_item_model.dart';

class DashboardModel {
  Rx<List<SliderofferbannItemModel>> sliderofferbannItemList =
      Rx(List.generate(1, (index) => SliderofferbannItemModel()));

  Rx<List<CategoriesItemModel>> categoriesItemList =
      Rx(List.generate(6, (index) => CategoriesItemModel()));

  Rx<List<FlashsaleItemModel>> flashsaleItemList =
      Rx(List.generate(3, (index) => FlashsaleItemModel()));

  Rx<List<MegasaleItemModel>> megasaleItemList =
      Rx(List.generate(3, (index) => MegasaleItemModel()));

  Rx<List<DashboardItemModel>> dashboardItemList =
      Rx(List.generate(4, (index) => DashboardItemModel()));
}
