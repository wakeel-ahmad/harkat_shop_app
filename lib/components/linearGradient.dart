import 'package:flutter/material.dart';

LinearGradient kLinearGradient() {
  return LinearGradient(
    colors: [
      Colors.black.withOpacity(0.6),
      Colors.black.withOpacity(0.3),
    ],
    stops: [0.0, 0.2],
    begin: Alignment.centerLeft,
    end: Alignment.topRight,
  );
}
