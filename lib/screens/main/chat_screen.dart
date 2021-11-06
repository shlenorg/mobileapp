import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/networks/models/body_models.dart';
import 'package:shlen/screens/chat/join_public_chat.dart';
import 'package:shlen/screens/chat/new_chat.dart';
import 'package:shlen/screens/chat/new_group_chat.dart';
import 'package:shlen/screens/chat/single_chat_screen.dart';
import 'package:shlen/utils/constants.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';
import 'package:web_socket_channel/io.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    Key key,
  }) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  ScrollController _scrollController = ScrollController();
  List<String> services_list = [
    "#SHLEN",
    "#support",
    "#crypto",
    "#chitchat",
    "#defi",
    "#markets",
    "#dap-ps",
    "#devcon",
    "#eth2",
  ];

  _ChatScreenState({
    Key key,
  });

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
    var first_time_box = MediaQuery.of(context).size.height < 600 ? Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height - 151,
        ),
        child:ListView(
          controller: _scrollController,
            children: [
      Container(
          margin: EdgeInsets.only(top: AppDimens.of(context).main_margin_vbig),
          alignment: AlignmentDirectional.center,
          child: Text(AppTranslations.of(context).text("chat_text"),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: AppDimens.of(context).H1,
                  color: AppColor.of(context).white_text,
                  fontFamily: 'AU'))),
      Container(
          margin: EdgeInsets.fromLTRB(
            AppDimens.of(context).main_margin,
            AppDimens.of(context).main_margin_small,
            AppDimens.of(context).main_margin,
            AppDimens.of(context).main_margin_small,
          ),
          alignment: AlignmentDirectional.center,
          child: Text(AppTranslations.of(context).text("chat_text1"),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: AppDimens.of(context).H2,
                  color: AppColor.of(context).white_text.withOpacity(0.6),
                  fontFamily: 'SF'))),
      Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(
              AppDimens.of(context).main_margin,
              0,
              AppDimens.of(context).main_margin,
              AppDimens.of(context).main_margin_small),
          child: FlatButton(
            onPressed: () {
              inDeveloping(scaffoldKey);
            },
            child: Text(AppTranslations.of(context).text("invite_friends_text"),
                style: TextStyle(
                  fontFamily: 'SF',
                  fontSize: AppDimens.of(context).H2,
                )),
            color: AppColor.of(context).btn_main_color,
            padding: EdgeInsets.fromLTRB(
                0.0,
                AppDimens.of(context).main_margin_small,
                0.0,
                AppDimens.of(context).main_margin_small),
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(AppDimens.of(context).corner_radius)),
          )),
      Container(
          margin: EdgeInsets.only(top: AppDimens.of(context).main_margin_midle),
          alignment: AlignmentDirectional.center,
          child: Text(AppTranslations.of(context).text("or_text"),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: AppDimens.of(context).H1,
                  color: AppColor.of(context).white_text,
                  fontFamily: 'AU'))),
      Container(
          margin: EdgeInsets.only(top: AppDimens.of(context).main_margin),
          alignment: AlignmentDirectional.center,
          child: Text(AppTranslations.of(context).text("chat_text2"),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: AppDimens.of(context).H2,
                  color: AppColor.of(context).white_text.withOpacity(0.6),
                  fontFamily: 'SF'))),
      Container(
          margin: EdgeInsets.only(top: AppDimens.of(context).main_margin_midle),
          alignment: AlignmentDirectional.center,
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 5.0, // g
            runSpacing: 0.0, // a gap between lines
            children: <Widget>[...generate_tags()],
          )),
    ])) :
    Column(children: [
      Container(
          margin: EdgeInsets.only(top: AppDimens.of(context).main_margin_vbig),
          alignment: AlignmentDirectional.center,
          child: Text(AppTranslations.of(context).text("chat_text"),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: AppDimens.of(context).H1,
                  color: AppColor.of(context).white_text,
                  fontFamily: 'AU'))),
      Container(
          margin: EdgeInsets.fromLTRB(
            AppDimens.of(context).main_margin,
            AppDimens.of(context).main_margin_small,
            AppDimens.of(context).main_margin,
            AppDimens.of(context).main_margin_small,
          ),
          alignment: AlignmentDirectional.center,
          child: Text(AppTranslations.of(context).text("chat_text1"),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: AppDimens.of(context).H2,
                  color: AppColor.of(context).white_text.withOpacity(0.6),
                  fontFamily: 'SF'))),
      Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(
              AppDimens.of(context).main_margin,
              0,
              AppDimens.of(context).main_margin,
              AppDimens.of(context).main_margin_small),
          child: FlatButton(
            onPressed: () {
              inDeveloping(scaffoldKey);
            },
            child: Text(AppTranslations.of(context).text("invite_friends_text"),
                style: TextStyle(
                  fontFamily: 'SF',
                  fontSize: AppDimens.of(context).H2,
                )),
            color: AppColor.of(context).btn_main_color,
            padding: EdgeInsets.fromLTRB(
                0.0,
                AppDimens.of(context).main_margin_small,
                0.0,
                AppDimens.of(context).main_margin_small),
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(AppDimens.of(context).corner_radius)),
          )),
      Container(
          margin: EdgeInsets.only(top: AppDimens.of(context).main_margin_midle),
          alignment: AlignmentDirectional.center,
          child: Text(AppTranslations.of(context).text("or_text"),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: AppDimens.of(context).H1,
                  color: AppColor.of(context).white_text,
                  fontFamily: 'AU'))),
      Container(
          margin: EdgeInsets.only(top: AppDimens.of(context).main_margin),
          alignment: AlignmentDirectional.center,
          child: Text(AppTranslations.of(context).text("chat_text2"),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: AppDimens.of(context).H2,
                  color: AppColor.of(context).white_text.withOpacity(0.6),
                  fontFamily: 'SF'))),
      Container(
          margin: EdgeInsets.only(top: AppDimens.of(context).main_margin_midle),
          alignment: AlignmentDirectional.center,
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 5.0, // g
            runSpacing: 0.0, // a gap between lines
            children: <Widget>[...generate_tags()],
          )),
    ]);
    return MediaQuery.of(context).size.height < 600 ? Scaffold(
          extendBodyBehindAppBar: true,
          key: scaffoldKey,
          backgroundColor: Colors.transparent,
          body: Builder(
        builder: (context) =>
            Container(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height - 61,
                ),
                child:ListView(
                  controller: _scrollController,
                    children: [
                    first_time_box,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: GestureDetector(
                        onTap: () {
                          _settingModalBottomSheet(context);
                        },
                        child: Container(
                            height: AppDimens.of(context).plus_height,
                            width: AppDimens.of(context).plus_height,
                            padding: EdgeInsets.all(AppDimens.of(context).H2),
                            decoration: BoxDecoration(
                              color: AppColor.of(context).main_color,
                              borderRadius: BorderRadius.circular(
                                  AppDimens.of(context).btn_corner_radius),
                            ),
                            margin: EdgeInsets.fromLTRB(
                                0.0,
                                AppDimens.of(context).main_margin_small,
                                AppDimens.of(context).main_margin_small,
                                AppDimens.of(context).main_margin_small),
                            child: SvgPicture.asset(
                                "assets/images/plus_btn_icon.svg"))))
              ],
            )
  ])))) : Scaffold(
          extendBodyBehindAppBar: true,
          key: scaffoldKey,
          backgroundColor: Colors.transparent,
          body: Stack(alignment: AlignmentDirectional.centerStart, children: [
            Column(
              children: [first_time_box],
            ),
            Column(
              children: [
                Expanded(
                  child: Container(),
                ),
                GestureDetector(
                    onTap: () {
                      _settingModalBottomSheet(context);
                    },
                    child: Container(
                        height: AppDimens.of(context).plus_height,
                        width: AppDimens.of(context).plus_height,
                        padding: EdgeInsets.all(AppDimens.of(context).H2),
                        decoration: BoxDecoration(
                          color: AppColor.of(context).main_color,
                          borderRadius: BorderRadius.circular(
                              AppDimens.of(context).btn_corner_radius),
                        ),
                        margin: EdgeInsets.fromLTRB(
                            0.0,
                            AppDimens.of(context).top_header_height,
                            AppDimens.of(context).main_margin_small,
                            AppDimens.of(context).main_margin_small),
                        child: SvgPicture.asset(
                            "assets/images/plus_btn_icon.svg")))
              ],
            )
          ]));
  }

  generate_tags() {
    return services_list.map((tag) => get_chip(tag)).toList();
  }

  get_chip(name) {
    return FilterChip(
      labelPadding: EdgeInsets.all(0.0),
        onSelected: (val) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SingleChatScreen(
                      regUserBody: RegUserBody(
                          id: 88,
                          first_name: "test",
                          last_name: "tester",
                          user_key: "2"),
                      chat_id: "test" + "88",)));
        },
        padding: EdgeInsets.all(0.0),
        label: Container(
            decoration: BoxDecoration(
              border:
                  Border.all(color: AppColor.of(context).white_text, width: 1),
              borderRadius: BorderRadius.circular(AppDimens.of(context).H2),
            ),
            padding: EdgeInsets.all(AppDimens.of(context).icon_padding),
            child: Text("${name}",
                style: TextStyle(
                    fontSize: AppDimens.of(context).H2,
                    color: AppColor.of(context).main_text_color,
                    fontFamily: 'SF'))));
  }

  void _settingModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            decoration: BoxDecoration(
                color: AppColor.of(context).lite_black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppDimens.of(context).main_margin),
                  topRight: Radius.circular(AppDimens.of(context).main_margin),
                )),
            child: Wrap(
              children: <Widget>[
                Container(
                    margin:
                        EdgeInsets.all(AppDimens.of(context).main_margin_small),
                    child: Center(
                        child: Container(
                            height: 2,
                            width: AppDimens.of(context).main_margin,
                            decoration: BoxDecoration(
                              color: AppColor.of(context).white_text,
                              borderRadius: BorderRadius.circular(
                                  AppDimens.of(context).corner_radius),
                            )))),
                GestureDetector(
                    //You need to make my child interactive
                    onTap: () {
                      Navigator.pop(context);
                      inDeveloping(scaffoldKey);
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(
                            AppDimens
                                .of(context)
                                .main_margin,
                            AppDimens
                                .of(context)
                                .main_margin_small,
                            AppDimens
                                .of(context)
                                .main_margin,
                            0.0),
                        alignment: AlignmentDirectional.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AppTranslations.of(context).text("open_text"),
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: AppDimens.of(context).H2,
                                    color: AppColor.of(context).white_text,
                                    fontFamily: 'SF')),
                            SvgPicture.asset(
                              "assets/images/wallet_menu_icon.svg",
                            )
                          ],
                        ))),

                GestureDetector(
                  //You need to make my child interactive
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewChatScreen()));
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(
                            AppDimens
                                .of(context)
                                .main_margin_midle,
                            0,
                            AppDimens
                                .of(context)
                                .main_margin_midle,
                            0.0),
                        padding: EdgeInsets.only(top:
                        AppDimens
                            .of(context)
                            .main_margin_small),
                        child: Center(
                            child: Container(
                                margin: EdgeInsets.only(
                                    top: AppDimens
                                        .of(
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
                                                alignment: AlignmentDirectional
                                                    .center,
                                                width: 40,
                                                child: SvgPicture
                                                    .asset(
                                                    "assets/images/new_chat_icon.svg",
                                                    color: AppColor
                                                        .of(context)
                                                        .main_color
                                                )),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                              children: [
                                                Container(
                                                    child: Container(
                                                        alignment: AlignmentDirectional
                                                            .centerStart,
                                                        padding:
                                                        EdgeInsets.only(
                                                            left: AppDimens
                                                                .of(context)
                                                                .main_margin_small),
                                                        child: Text(
                                                            AppTranslations.of(
                                                                context).text(
                                                                "new_chat_text"),
                                                            textAlign: TextAlign
                                                                .start,
                                                            style: TextStyle(
                                                                fontSize: AppDimens
                                                                    .of(context)
                                                                    .H1_5,
                                                                fontFamily: 'SF',
                                                                color: AppColor
                                                                    .of(context)
                                                                    .main_text_color)))),

                                              ],)
                                          ]),
                                    ]))))),
                GestureDetector(
                  //You need to make my child interactive
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewGroupChatScreen()));
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(
                            AppDimens
                                .of(context)
                                .main_margin_midle,
                            0,
                            AppDimens
                                .of(context)
                                .main_margin_midle,
                            0.0),
                        padding: EdgeInsets.only(top:
                        AppDimens
                            .of(context)
                            .main_margin_small),
                        child: Center(
                            child: Container(
                                margin: EdgeInsets.only(
                                    top: AppDimens
                                        .of(
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
                                                alignment: AlignmentDirectional
                                                    .center,
                                                width: 40,
                                                child: SvgPicture
                                                    .asset(
                                                    "assets/images/group_chat_icon.svg",
                                                    color: AppColor
                                                        .of(context)
                                                        .main_color
                                                )),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                              children: [
                                                Container(
                                                    child: Container(
                                                        alignment: AlignmentDirectional
                                                            .centerStart,
                                                        padding:
                                                        EdgeInsets.only(
                                                            left: AppDimens
                                                                .of(context)
                                                                .main_margin_small),
                                                        child: Text(
                                                            AppTranslations.of(
                                                                context).text(
                                                                "group_chat_text"),
                                                            textAlign: TextAlign
                                                                .start,
                                                            style: TextStyle(
                                                                fontSize: AppDimens
                                                                    .of(context)
                                                                    .H1_5,
                                                                fontFamily: 'SF',
                                                                color: AppColor
                                                                    .of(context)
                                                                    .main_text_color)))),

                                              ],)
                                          ]),
                                    ]))))),
                GestureDetector(
                  //You need to make my child interactive
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JoinPublicChatScreen()));
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(
                            AppDimens
                                .of(context)
                                .main_margin_midle,
                            0,
                            AppDimens
                                .of(context)
                                .main_margin_midle,
                            0.0),
                        padding: EdgeInsets.only(top:
                        AppDimens
                            .of(context)
                            .main_margin_small),
                        child: Center(
                            child: Container(
                                margin: EdgeInsets.only(
                                    top: AppDimens
                                        .of(
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
                                                alignment: AlignmentDirectional
                                                    .center,
                                                width: 40,
                                                child: SvgPicture
                                                    .asset(
                                                    "assets/images/join_public_chat.svg",
                                                    color: AppColor
                                                        .of(context)
                                                        .main_color
                                                )),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                              children: [
                                                Container(
                                                    child: Container(
                                                        alignment: AlignmentDirectional
                                                            .centerStart,
                                                        padding:
                                                        EdgeInsets.only(
                                                            left: AppDimens
                                                                .of(context)
                                                                .main_margin_small),
                                                        child: Text(
                                                            AppTranslations.of(
                                                                context).text(
                                                                "join_public_chat_text"),
                                                            textAlign: TextAlign
                                                                .start,
                                                            style: TextStyle(
                                                                fontSize: AppDimens
                                                                    .of(context)
                                                                    .H1_5,
                                                                fontFamily: 'SF',
                                                                color: AppColor
                                                                    .of(context)
                                                                    .main_text_color)))),

                                              ],)
                                          ]),
                                    ]))))),
                GestureDetector(
                  //You need to make my child interactive
                    onTap: () {
                      Navigator.pop(context);
                      inDeveloping(scaffoldKey);
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(
                            AppDimens
                                .of(context)
                                .main_margin_midle,
                            0,
                            AppDimens
                                .of(context)
                                .main_margin_midle,
                            AppDimens
                                .of(context)
                                .main_margin_midle),
                        padding: EdgeInsets.only(top:
                        AppDimens
                            .of(context)
                            .main_margin_small),
                        child: Center(
                            child: Container(
                                margin: EdgeInsets.only(
                                    top: AppDimens
                                        .of(
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
                                                alignment: AlignmentDirectional
                                                    .center,
                                                width: 40,
                                                child: SvgPicture
                                                    .asset(
                                                    "assets/images/invite_friends_icon.svg",
                                                    color: AppColor
                                                        .of(context)
                                                        .main_color
                                                )),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                              children: [
                                                Container(
                                                    child: Container(
                                                        alignment: AlignmentDirectional
                                                            .centerStart,
                                                        padding:
                                                        EdgeInsets.only(
                                                            left: AppDimens
                                                                .of(context)
                                                                .main_margin_small),
                                                        child: Text(
                                                            AppTranslations.of(
                                                                context).text(
                                                                "invite_friends_text"),
                                                            textAlign: TextAlign
                                                                .start,
                                                            style: TextStyle(
                                                                fontSize: AppDimens
                                                                    .of(context)
                                                                    .H1_5,
                                                                fontFamily: 'SF',
                                                                color: AppColor
                                                                    .of(context)
                                                                    .main_text_color)))),

                                              ],)
                                          ]),
                                    ]))))),
              ],
            ),
          );
        });
  }
}
