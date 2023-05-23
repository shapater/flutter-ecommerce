import 'package:get/get.dart';
import 'notification2_item_model.dart';

class NotificationOfferModel {
  Rx<List<Notification2ItemModel>> notification2ItemList =
      Rx(List.generate(3, (index) => Notification2ItemModel()));
}
