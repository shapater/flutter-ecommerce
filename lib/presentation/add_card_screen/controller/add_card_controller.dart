import 'package:muhammad_s_application7/core/app_export.dart';
import 'package:muhammad_s_application7/presentation/add_card_screen/models/add_card_model.dart';
import 'package:flutter/material.dart';

class AddCardController extends GetxController {
  TextEditingController cardnumberoneController = TextEditingController();

  TextEditingController expirationdateController = TextEditingController();

  TextEditingController securitycodeController = TextEditingController();

  TextEditingController cardnumbertwoController = TextEditingController();

  Rx<AddCardModel> addCardModelObj = AddCardModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    cardnumberoneController.dispose();
    expirationdateController.dispose();
    securitycodeController.dispose();
    cardnumbertwoController.dispose();
  }
}
