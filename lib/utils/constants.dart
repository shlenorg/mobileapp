import 'package:flutter/material.dart';

class Constants extends InheritedWidget {
  static Constants of(BuildContext context) => context. dependOnInheritedWidgetOfExactType<Constants>();

  const Constants({Widget child, Key key}): super(key: key, child: child);
  final String token = 'token';
  final String touch_id_select = 'touch_id_select';
  final String profile_id = 'profile_id';
  final String id = 'id';
  final String local = 'local';
  final String base_code = "base_code";
  final String base_url = "base_url";
  final String user_image_url = "user_image_url";
  final String is_auth = "is_auth";
  final String bookmark_screen = "bookmark_screen";
  final String bond_screen = 'bond_screen';
  final String themes = 'themes';
  final String api_key = 'frfVK74miNv65PSKX';
  @override
  bool updateShouldNotify(Constants oldWidget) => false;
}