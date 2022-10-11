import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

BoxShadow kBoxShadow() {
  return BoxShadow(
    color: Colors.grey.withOpacity(0.2),
    blurRadius: 1,
    spreadRadius: 1,
    offset: Offset(0, 1),
  );
}
