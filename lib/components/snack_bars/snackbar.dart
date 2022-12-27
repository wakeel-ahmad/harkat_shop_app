import 'package:flutter/material.dart';
import 'package:tourism/core/core.dart';

kerrorSnackBar(BuildContext context, String message) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 2),
      margin: EdgeInsets.all(5),
      shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10),
      ),
      backgroundColor: Colors.red.withOpacity(0.8),
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(message),
      ),
    ),
  );
}

ksucessSnackBar(BuildContext context, String message) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 2),
      margin: EdgeInsets.all(5),
      shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10),
      ),
      backgroundColor: ThemeColors.instance.primaryColor.withOpacity(0.8),
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(message),
      ),
    ),
  );
}
