import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/core/core.dart';

ElevatedButton AppButton({
  VoidCallback? onPressed,
  double? width,
  String name = "Next",
  double? labelSize,
  bool isBorder = false,
}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: isBorder
              ? BorderSide(
                  color: ThemeColors.instance.primaryColor,
                )
              : BorderSide.none,
        ),
        primary: isBorder ? Colors.white : ThemeColors.instance.primaryColor,
        fixedSize: Size(width ?? Get.size.width * 0.9, 50),
      ),
      onPressed: onPressed ?? () {},
      child: Text(
        name,
        style: Theme.of(Get.context!).textTheme.button!.copyWith(
              fontSize: labelSize ?? 18,
              color:
                  isBorder ? ThemeColors.instance.primaryColor : Colors.white,
            ),
      ));
}

ElevatedButton kIconButton({
  VoidCallback? onPressed,
  String name = "Next",
  Color? color,
  IconData? icon,
  double? width,
}) {
  return ElevatedButton.icon(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      primary: color ?? ThemeColors.instance.primaryColor,
      fixedSize: Size(width ?? Get.size.width, 50),
    ),
    onPressed: onPressed ?? () {},
    icon: Icon(icon),
    label: Text(
      name,
      style: Theme.of(Get.context!).textTheme.button!.copyWith(
            color: Colors.white,
          ),
    ),
  );
}
