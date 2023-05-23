import 'package:get/get.dart';
import 'notification1_item_model.dart';

class NotificationFeedModel {
  Rx<List<Notification1ItemModel>> notification1ItemList =
      Rx(List.generate(3, (index) => Notification1ItemModel()));
}
