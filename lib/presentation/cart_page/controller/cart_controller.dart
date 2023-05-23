import 'package:muhammad_s_application7/core/app_export.dart';
import 'package:muhammad_s_application7/presentation/cart_page/models/cart_model.dart';
import 'package:flutter/material.dart';

class CartController extends GetxController {
  CartController(this.cartModelObj);

  TextEditingController cuponcodeController = TextEditingController();

  Rx<CartModel> cartModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    cuponcodeController.dispose();
  }
}
