import 'package:muhammad_s_application7/core/app_export.dart';
import 'package:muhammad_s_application7/presentation/change_password_screen/models/change_password_model.dart';
import 'package:flutter/material.dart';

class ChangePasswordController extends GetxController {
  TextEditingController languageController = TextEditingController();

  TextEditingController languageoneController = TextEditingController();

  TextEditingController languagetwoController = TextEditingController();

  Rx<ChangePasswordModel> changePasswordModelObj = ChangePasswordModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
    languageoneController.dispose();
    languagetwoController.dispose();
  }
}
