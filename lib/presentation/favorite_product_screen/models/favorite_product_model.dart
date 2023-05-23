import 'package:get/get.dart';
import 'favorite_item_model.dart';

class FavoriteProductModel {
  Rx<List<FavoriteItemModel>> favoriteItemList =
      Rx(List.generate(4, (index) => FavoriteItemModel()));
}
