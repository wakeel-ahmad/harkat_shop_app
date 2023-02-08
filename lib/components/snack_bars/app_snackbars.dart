import 'package:flutter/material.dart';
import 'package:get/get.dart';

void errorSnackBar(
  String text, {
  IconData icon = Icons.error,
  VoidCallback? onActionPress,
}) {
  if (!Get.isSnackbarOpen) {
    Get.showSnackbar(
      GetSnackBar(
        message: text,
        snackPosition: SnackPosition.BOTTOM,
        duration: onActionPress == null ? const Duration(seconds: 3) : null,
        icon: Icon(icon, color: Colors.white),
        backgroundColor: Colors.red,
        mainButton: onActionPress == null
            ? null
            : TextButton(
                onPressed: onActionPress,
                child: const Text(
                  'Retry',
                  style: TextStyle(color: Colors.white),
                ),
              ),
      ),
    );
  }
}

void successSnackBar(
  String text, {
  IconData icon = Icons.error,
}) {
  Get.showSnackbar(
    GetSnackBar(
      message: text,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      icon: Icon(icon, color: Colors.white),
      backgroundColor: Colors.green,
    ),
  );
}
