import 'package:flutter/material.dart';

AppBar customAppBar({required String title, IconData? icon}) {
  return AppBar(
    leading: Icon(icon),
    title: Text(title),
  );
}

