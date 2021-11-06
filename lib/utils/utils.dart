import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shlen/localization/app_translations.dart';

import 'dimens.dart';

getString(String string) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String stringValue = prefs.getString(string);
  return stringValue;
}

getInt(String string) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int intValue = prefs.getInt(string);
  return intValue;
}

getBool(String string) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool intValue = prefs.getBool(string);
  return intValue;
}

saveInt(int value, String string) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt(string, value);
}

saveBool(bool value, String string) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool(string, value);
}

saveString(String value, String string) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(string, value);
}

deleteSharedData(String string) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove(string);
}

checkExist(String string) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.containsKey(string);
}

checkErrorState(BuildContext context, String text,
    GlobalKey<ScaffoldState> scaffold) {
  if (text != null) {
    scaffold.currentState.showSnackBar(SnackBar(
        content: Text(text),
        backgroundColor: AppColor
            .of(context)
            .red,
        duration: Duration(seconds: 3)));
  } else {
    scaffold.currentState.showSnackBar(SnackBar(
        content: Text(AppTranslations.of(context).text('server_null_error')),
        backgroundColor: AppColor
            .of(context)
            .red,
        duration: Duration(seconds: 3)));
  }
}
inDeveloping(
    GlobalKey<ScaffoldState> scaffold) {
      scaffold.currentState.showSnackBar(SnackBar(
          content: Text(AppTranslations.of(scaffold.currentContext).text('developing_text'), style: TextStyle(
              fontSize: AppDimens.of(scaffold.currentContext)
                  .H3,
              fontFamily:
              'SF',
              color:
              AppColor.of(scaffold.currentContext).white_text), textAlign: TextAlign.center,),
          backgroundColor: AppColor.of(scaffold.currentContext).text_grey.withOpacity(0.7),
          duration: Duration(seconds: 1)));

}

