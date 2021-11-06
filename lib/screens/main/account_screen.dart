import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/screens/account/about_screen.dart';
import 'package:shlen/screens/account/additionally_screen.dart';
import 'package:shlen/screens/account/contacts_screen.dart';
import 'package:shlen/screens/account/ens_name_screen.dart';
import 'package:shlen/screens/account/help_screen.dart';
import 'package:shlen/screens/account/notifications_screen.dart';
import 'package:shlen/screens/account/privacy_security_screen.dart';
import 'package:shlen/screens/account/synchonization_screen.dart';
import 'package:shlen/screens/account/theme_screen.dart';
import 'package:shlen/utils/constants.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';

class AccountScreen extends StatefulWidget {

  const AccountScreen({Key key,})
      : super(key: key);

  @override
  _AccountScreenState createState() =>
      _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String image_url;
  _AccountScreenState(
      {Key key,});


  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
//      showTouchId(context);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.transparent,
        body: Container(
            padding: EdgeInsets.fromLTRB(0,
            AppDimens.of(context).main_margin_midle, 0, 0.0),
        child: SingleChildScrollView(
        child: Column(children: [
          Container(
                margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle,
                    0, AppDimens.of(context).main_margin_midle, 0.0),
                padding: EdgeInsets.all(AppDimens.of(context).main_margin_small),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.of(context).text_grey.withOpacity(0.3),
                      width: 1.0,
                    ),
                  ),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                        Container(
                            width:
                            AppDimens.of(context).icon_plus_height,
                            height:
                            AppDimens.of(context).icon_plus_height,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColor
                                        .of(context)
                                        .white_text, width: 1),
                                borderRadius: BorderRadius.circular(
                                    AppDimens
                                        .of(context)
                                        .main_margin_midle)),
                            margin: EdgeInsets.fromLTRB(0.0, AppDimens.of(context).main_margin_midle,
                                AppDimens.of(context).main_margin_small, AppDimens.of(context).main_margin_small),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    AppDimens.of(context).btn_corner_radius),
                                child: image_url != "" && image_url != null
                                    ? Image.network(
                                   image_url, //Constants().base_image_url +
                                  width:
                                  AppDimens.of(context).icon_logo_height,
                                  height:
                                  AppDimens.of(context).icon_logo_height,
                                )
                                    : Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: AppColor.of(context).white_text,
                                      size: AppDimens.of(context).main_margin,
                                    )
                                  ],
                                ))),
                  Container(
                    width: MediaQuery.of(context).size.width - 170,
                            margin: EdgeInsets.only(
                                left: AppDimens.of(context).main_margin_small,
                                right: AppDimens.of(context).main_margin_small
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          bottom:
                                          AppDimens.of(context).icon_padding),
                                      child: Row(children: [
                                        Flexible(child: Text(AppTranslations.of(context).text("beagle_text") ,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: AppDimens.of(context).H1,
                                                fontWeight: FontWeight.bold,
                                                color: AppColor.of(context)
                                                    .white_text,
                                                fontFamily: 'SF')))
                                      ],)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          bottom:
                                          AppDimens.of(context).icon_padding),
                                      child: Text("0x042684...5933",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize: AppDimens.of(context).H2,
                                              color: AppColor.of(context)
                                                  .dark_grey_text,
                                              fontFamily: 'SF'))),
                                ]))
                      ]),

            GestureDetector(
                onTap: () {
                  _logOut();
                },
                child: SvgPicture.asset(
                              "assets/images/log_out_2_icon.svg")),
                    ])),
          GestureDetector(
            //You need to make my child interactive
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ENSNameScreen()));

              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(
                      AppDimens.of(context)
                          .main_margin_midle,
                      AppDimens.of(context)
                          .main_margin_small,
                      AppDimens.of(context)
                          .main_margin_midle,
                      0.0),
                  padding: EdgeInsets.only(top:
                      AppDimens.of(context)
                          .main_margin_small),
                  child: Center(
                      child: Container(
                          margin: EdgeInsets.only(
                              top: AppDimens.of(
                                  context)
                                  .main_margin_small),
                          child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .center,
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .start,
                                    children: [
                                      Container(
                                        alignment: AlignmentDirectional.center,
                                        width: 40,
                                          child: SvgPicture
                                              .asset("assets/images/ens_icon.svg",
                                              color: AppColor.of(context).main_color
                                          )),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,
                                        children: [
                                        Container(
                                            child: Container(
                                              alignment: AlignmentDirectional.centerStart,
                                                padding:
                                                EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                                child: Text(AppTranslations.of(context).text("ens_name_text"),
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(fontSize: AppDimens.of(context).H1_5, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).main_text_color)))),
                                        Container(
                                            child: Container(
                                                padding:
                                                EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                                child: Text(AppTranslations.of(context).text("ens_name_text1"),
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(fontSize: AppDimens.of(context).H3, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).text_grey.withOpacity(0.3))))),

                                      ],)
                                    ]),

                                Container(
                                    child: SvgPicture
                                        .asset("assets/images/arrow_right.svg",
                                    )),
                              ]))))),
          GestureDetector(
            //You need to make my child interactive
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ContactsScreen()));

              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(
                      AppDimens.of(context)
                          .main_margin_midle,
                      AppDimens.of(context)
                          .main_margin_small,
                      AppDimens.of(context)
                          .main_margin_midle,
                      0.0),
                  padding: EdgeInsets.only(top:
                      AppDimens.of(context)
                          .main_margin_small),
                  child: Center(
                      child: Container(
                          margin: EdgeInsets.only(
                              top: AppDimens.of(
                                  context)
                                  .main_margin_small),
                          child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .center,
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .start,
                                    children: [
                                      Container(
                                          alignment: AlignmentDirectional.center,
                                          width: 40,
                                          child: SvgPicture
                                              .asset("assets/images/contacts_icon.svg",
                                              color: AppColor.of(context).main_color
                                          )),
                                      Container(
                                          child: Container(
                                              padding:
                                              EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                              child: Text(AppTranslations.of(context)
                                                  .text("contacts_text"), style: TextStyle(fontSize: AppDimens.of(context).H1_5, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).main_text_color)))),
                                    ]),

                                Container(
                                    child: SvgPicture
                                        .asset("assets/images/arrow_right.svg",
                                    )),
                              ]))))),
          Container(
            alignment: AlignmentDirectional.centerStart,
              margin: EdgeInsets.fromLTRB(
                  AppDimens.of(context).main_margin,
                  AppDimens.of(context).main_margin,
                  AppDimens.of(context).main_margin,
                  0.0),
              child: Text(
                  AppTranslations.of(context)
                      .text("settings_text"),
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: AppDimens.of(context).H1,
                      fontFamily: 'AU',
                      color:
                      AppColor.of(context).white_text))),
          GestureDetector(
            //You need to make my child interactive
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PrivacySecurityScreen()));
              },
              child: Container(
                  padding: EdgeInsets.only(top:
                  AppDimens.of(context)
                      .main_margin_small),
                  margin: EdgeInsets.fromLTRB(
                      AppDimens.of(context)
                          .main_margin_midle,
                      AppDimens.of(context)
                          .main_margin_small,
                      AppDimens.of(context)
                          .main_margin_midle,
                      0.0),
                  child: Center(
                      child: Container(
                          margin: EdgeInsets.only(
                              top: AppDimens.of(
                                  context)
                                  .main_margin_small),
                          child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .center,
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .start,
                                    children: [
                                      Container(
                                          alignment: AlignmentDirectional.center,
                                          width: 40,
                                          child: SvgPicture
                                              .asset("assets/images/privat_pol_icon.svg",
                                              color: AppColor.of(context).main_color
                                          )),
                                      Container(
                                          child: Container(
                                              padding:
                                              EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                              child: Text(AppTranslations.of(context)
                                                  .text("pas_text"), style: TextStyle(fontSize: AppDimens.of(context).H1_5, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).main_text_color)))),
                                    ]),

                                Container(
                                    child: SvgPicture
                                        .asset("assets/images/arrow_right.svg",
                                    )),
                              ]))))),
          GestureDetector(
            //You need to make my child interactive
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ThemeScreen()));
              },
              child: Container(
                  padding: EdgeInsets.only(top:
                  AppDimens.of(context)
                      .main_margin_small),
                  margin: EdgeInsets.fromLTRB(
                      AppDimens.of(context)
                          .main_margin_midle,
                      AppDimens.of(context)
                          .main_margin_small,
                      AppDimens.of(context)
                          .main_margin_midle,
                      0.0),
                  child: Center(
                      child: Container(
                          margin: EdgeInsets.only(
                              top: AppDimens.of(
                                  context)
                                  .main_margin_small),
                          child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .center,
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .start,
                                    children: [
                                      Container(
                                          alignment: AlignmentDirectional.center,
                                          width: 40,
                                          child: SvgPicture
                                              .asset("assets/images/theme_icon.svg"
                                          )),
                                      Container(
                                          child: Container(
                                              padding:
                                              EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                              child: Text(AppTranslations.of(context)
                                                  .text("theme_text"), style: TextStyle(fontSize: AppDimens.of(context).H1_5, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).main_text_color)))),
                                    ]),

                                Container(
                                    child: SvgPicture
                                        .asset("assets/images/arrow_right.svg",
                                    )),
                              ]))))),
          GestureDetector(
            //You need to make my child interactive
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            NotificationsScreen()));
              },
              child: Container(
                  padding: EdgeInsets.only(top:
                  AppDimens.of(context)
                      .main_margin_small),
                  margin: EdgeInsets.fromLTRB(
                      AppDimens.of(context)
                          .main_margin_midle,
                      AppDimens.of(context)
                          .main_margin_small,
                      AppDimens.of(context)
                          .main_margin_midle,
                      0.0),
                  child: Center(
                      child: Container(
                          margin: EdgeInsets.only(
                              top: AppDimens.of(
                                  context)
                                  .main_margin_small),
                          child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .center,
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .start,
                                    children: [
                                      Container(
                                          alignment: AlignmentDirectional.center,
                                          width: 40,
                                          child: SvgPicture
                                              .asset("assets/images/bell_icon.svg",
                                              color: AppColor.of(context).main_color
                                          )),
                                      Container(
                                          child: Container(
                                              padding:
                                              EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                              child: Text(AppTranslations.of(context)
                                                  .text("notifications_text"), style: TextStyle(fontSize: AppDimens.of(context).H1_5, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).main_text_color)))),
                                    ]),

                                Container(
                                    child: SvgPicture
                                        .asset("assets/images/arrow_right.svg",
                                    )),
                              ]))))),
          GestureDetector(
            //You need to make my child interactive
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SynchronizationScreen()));
              },
              child: Container(
                  padding: EdgeInsets.only(top:
                  AppDimens.of(context)
                      .main_margin_small),
                  margin: EdgeInsets.fromLTRB(
                      AppDimens.of(context)
                          .main_margin_midle,
                      AppDimens.of(context)
                          .main_margin_small,
                      AppDimens.of(context)
                          .main_margin_midle,
                      0.0),
                  child: Center(
                      child: Container(
                          margin: EdgeInsets.only(
                              top: AppDimens.of(
                                  context)
                                  .main_margin_small),
                          child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .center,
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .start,
                                    children: [
                                      Container(
                                          alignment: AlignmentDirectional.center,
                                          width: 40,
                                          child: SvgPicture
                                              .asset("assets/images/sync_icon.svg",
                                              color: AppColor.of(context).main_color
                                          )),
                                      Container(
                                          child: Container(
                                              padding:
                                              EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                              child: Text(AppTranslations.of(context)
                                                  .text("synchronization_settings_text"), style: TextStyle(fontSize: AppDimens.of(context).H1_5, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).main_text_color)))),
                                    ]),

                                Container(
                                    child: SvgPicture
                                        .asset("assets/images/arrow_right.svg",
                                    )),
                              ]))))),
          GestureDetector(
            //You need to make my child interactive
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AdditionallyScreen()));
              },
              child: Container(
                  padding: EdgeInsets.only(top:
                  AppDimens.of(context)
                      .main_margin_small),
                  margin: EdgeInsets.fromLTRB(
                      AppDimens.of(context)
                          .main_margin_midle,
                      AppDimens.of(context)
                          .main_margin_small,
                      AppDimens.of(context)
                          .main_margin_midle,
                      0.0),
                  child: Center(
                      child: Container(
                          margin: EdgeInsets.only(
                              top: AppDimens.of(
                                  context)
                                  .main_margin_small),
                          child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .center,
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .start,
                                    children: [
                                      Container(
                                          alignment: AlignmentDirectional.center,
                                          width: 40,
                                          child: SvgPicture
                                              .asset("assets/images/additionally_icon.svg",
                                              color: AppColor.of(context).main_color
                                          )),
                                      Container(
                                          child: Container(
                                              padding:
                                              EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                              child: Text(AppTranslations.of(context)
                                                  .text("additionally_text"), style: TextStyle(fontSize: AppDimens.of(context).H1_5, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).main_text_color)))),
                                    ]),

                                Container(
                                    child: SvgPicture
                                        .asset("assets/images/arrow_right.svg",
                                    )),
                              ]))))),
          GestureDetector(
            //You need to make my child interactive
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HelpScreen()));
              },
              child: Container(
                  padding: EdgeInsets.only(top:
                  AppDimens.of(context)
                      .main_margin_small),
                  margin: EdgeInsets.fromLTRB(
                      AppDimens.of(context)
                          .main_margin_midle,
                      AppDimens.of(context)
                          .main_margin_small,
                      AppDimens.of(context)
                          .main_margin_midle,
                      0.0),
                  child: Center(
                      child: Container(
                          margin: EdgeInsets.only(
                              top: AppDimens.of(
                                  context)
                                  .main_margin_small),
                          child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .center,
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .start,
                                    children: [
                                      Container(
                                          alignment: AlignmentDirectional.center,
                                          width: 40,
                                          child: SvgPicture
                                              .asset("assets/images/help_icon.svg",
                                              color: AppColor.of(context).main_color
                                          )),
                                      Container(
                                          child: Container(
                                              padding:
                                              EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                              child: Text(AppTranslations.of(context)
                                                  .text("need_help_text"), style: TextStyle(fontSize: AppDimens.of(context).H1_5, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).main_text_color)))),
                                    ]),

                                Container(
                                    child: SvgPicture
                                        .asset("assets/images/arrow_right.svg",
                                    )),
                              ]))))),
          GestureDetector(
            //You need to make my child interactive
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AboutScreen()));
              },
              child: Container(
                  padding: EdgeInsets.only(top:
                  AppDimens.of(context)
                      .main_margin_small),
                  margin: EdgeInsets.fromLTRB(
                      AppDimens.of(context)
                          .main_margin_midle,
                      AppDimens.of(context)
                          .main_margin_small,
                      AppDimens.of(context)
                          .main_margin_midle,
                      0.0),
                  child: Center(
                      child: Container(
                          margin: EdgeInsets.only(
                              top: AppDimens.of(
                                  context)
                                  .main_margin_small),
                          child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .center,
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .start,
                                    children: [
                                      Container(
                                          alignment: AlignmentDirectional.center,
                                          width: 40,
                                          child: SvgPicture
                                              .asset("assets/images/about_icon.svg",
                                              color: AppColor.of(context).main_color
                                          )),
                                      Container(
                                          child: Container(
                                              padding:
                                              EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                              child: Text(AppTranslations.of(context)
                                                  .text("about_app_text"), style: TextStyle(fontSize: AppDimens.of(context).H1_5, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).main_text_color)))),
                                    ]),

                                Container(
                                    child: SvgPicture
                                        .asset("assets/images/arrow_right.svg",
                                    )),
                              ]))))),
          GestureDetector(
            //You need to make my child interactive
              onTap: () {
                inDeveloping(scaffoldKey);
                // _logOut();
              },
              child: Container(
                  padding: EdgeInsets.only(top:
                  AppDimens.of(context)
                      .main_margin_small),
                  margin: EdgeInsets.fromLTRB(
                      AppDimens.of(context)
                          .main_margin_midle,
                      AppDimens.of(context)
                          .main_margin_small,
                      AppDimens.of(context)
                          .main_margin_midle,
                      AppDimens.of(context)
                          .main_margin),
                  child: Center(
                      child: Container(
                          margin: EdgeInsets.only(
                              top: AppDimens.of(
                                  context)
                                  .main_margin_small),
                          child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .center,
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .start,
                                    children: [
                                      Container(
                                          alignment: AlignmentDirectional.center,
                                          width: 40,
                                          child: Container(
                                        padding: EdgeInsets.all(AppDimens.of(context).main_margin_vsmall),
                                          decoration: BoxDecoration(
                                            color: AppColor.of(context).red,
                                            borderRadius:
                                            BorderRadius.circular(AppDimens.of(context).icon_padding),
                                          ),
                                          child: SvgPicture
                                              .asset("assets/images/exit_icon.svg", color: AppColor.of(context).black_text
                                          ))),
                                      Container(
                                          child: Container(
                                              padding:
                                              EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                              child: Text(AppTranslations.of(context)
                                                  .text("log_out_text"), style: TextStyle(fontSize: AppDimens.of(context).H1_5, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).red)))),
                                    ]),

                              ]))))),
        ],))));
  }

  _logOut(){


  }

}
