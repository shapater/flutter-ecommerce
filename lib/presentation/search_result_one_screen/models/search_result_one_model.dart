import 'package:get/get.dart';
import 'search_result_item_model.dart';

class SearchResultOneModel {
  Rx<List<SearchResultItemModel>> searchResultItemList =
      Rx(List.generate(6, (index) => SearchResultItemModel()));
}
