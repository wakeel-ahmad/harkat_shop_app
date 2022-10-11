import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

InputDecoration inputDecoration({String? label, String? hintText}) {
  return InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
    hintStyle: TextStyle(color: Colors.grey),
    isDense: true,
    fillColor: Colors.grey.shade300,
    filled: true,
    hintText: hintText,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none,
    ),
  );
}

InputDecoration kinputDecoration({String? label, String? hintText}) {
  return InputDecoration(
    prefixIcon: Icon(
      FontAwesomeIcons.search,
      color: Colors.grey,
    ),
    hintStyle: TextStyle(color: Colors.grey),
    isDense: true,
    fillColor: Colors.grey.shade300,
    filled: true,
    hintText: hintText,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none,
    ),
  );
}
