import 'package:muhammad_s_application7/core/app_export.dart';
import 'package:muhammad_s_application7/presentation/write_review_fill_screen/models/write_review_fill_model.dart';
import 'package:flutter/material.dart';

class WriteReviewFillController extends GetxController {
  TextEditingController addreviewController = TextEditingController();

  Rx<WriteReviewFillModel> writeReviewFillModelObj = WriteReviewFillModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    addreviewController.dispose();
  }
}
