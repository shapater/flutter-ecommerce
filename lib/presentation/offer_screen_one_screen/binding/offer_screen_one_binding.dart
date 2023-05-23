import '../controller/offer_screen_one_controller.dart';
import 'package:get/get.dart';

class OfferScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OfferScreenOneController());
  }
}
