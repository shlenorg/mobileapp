import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/screens/auth/create_passwd_screen.dart';
import 'package:shlen/utils/dimens.dart';

class ChooseNameScreen extends StatefulWidget {

  const ChooseNameScreen({Key key}) : super(key: key);

  @override
  _ChooseNameScreenState createState() => _ChooseNameScreenState();
}

class _ChooseNameScreenState extends State<ChooseNameScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String photo;

  _ChooseNameScreenState();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var enter_text = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: EdgeInsets.fromLTRB(
                  AppDimens
                      .of(context)
                      .main_margin,
                  AppDimens
                      .of(context)
                      .main_margin_vbig,
                  AppDimens
                      .of(context)
                      .main_margin,
                  0.0),
              child: Text(AppTranslations.of(context).text("choose_name_text"),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: AppDimens
                          .of(context)
                          .H1,
                      fontFamily: 'AU',
                      color: AppColor
                          .of(context)
                          .white_text))),
          Container(
              margin: EdgeInsets.fromLTRB(
                  AppDimens
                      .of(context)
                      .main_margin,
                  AppDimens
                      .of(context)
                      .main_margin,
                  AppDimens
                      .of(context)
                      .main_margin,
                  0.0),
              child: Text(AppTranslations.of(context).text("choose_name_text1"),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: AppDimens
                          .of(context)
                          .H3,
                      fontFamily: 'SF',
                      color: AppColor
                          .of(context)
                          .text_grey
                          .withOpacity(0.6)))),

        ]);
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.share, color: Colors.transparent),
                  onPressed: (){

                  }),
            ],
            automaticallyImplyLeading: false,
            titleSpacing: 0,
            // Don't show the leading button
            title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FlatButton(
                    padding: EdgeInsets.only(left: 0),
                    child: Text(AppTranslations.of(context).text("back_text"),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: AppDimens
                                .of(context)
                                .H3,
                            color: AppColor
                                .of(context)
                                .white_text,
                            fontFamily: 'AU')),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ])),
        backgroundColor: Colors.transparent,
        key: scaffoldKey,
        body: Builder(
            builder: (context) =>
                Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          enter_text,
                          GestureDetector(
                            //You need to make my child interactive
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CreatePasswdScreen()));
                              },
                              child: Container(
                                  padding: EdgeInsets.only(top:
                                  AppDimens
                                      .of(context)
                                      .main_margin_small),
                                  margin: EdgeInsets.fromLTRB(
                                      AppDimens
                                          .of(context)
                                          .main_margin_midle,
                                      AppDimens
                                          .of(context)
                                          .main_margin_small,
                                      0,
                                      0),
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
                                                          width:
                                                          AppDimens
                                                              .of(context)
                                                              .icon_plus_height,
                                                          height:
                                                          AppDimens
                                                              .of(context)
                                                              .icon_plus_height,
                                                          decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: AppColor
                                                                    .of(context)
                                                                    .white_text,
                                                                width: 1),
                                                            borderRadius: BorderRadius
                                                                .circular(
                                                                AppDimens
                                                                    .of(context)
                                                                    .main_margin_midle),
                                                          ),
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                              0.0, 0.0,
                                                              AppDimens
                                                                  .of(context)
                                                                  .main_margin_small,
                                                              0.0),
                                                          child: ClipRRect(
                                                              borderRadius: BorderRadius
                                                                  .circular(
                                                                  AppDimens
                                                                      .of(
                                                                      context)
                                                                      .main_margin_midle),
                                                              child: photo !=
                                                                  "" &&
                                                                  photo != null
                                                                  ? Image
                                                                  .network(
                                                                photo,
                                                                width:
                                                                AppDimens
                                                                    .of(context)
                                                                    .H0,
                                                                height:
                                                                AppDimens
                                                                    .of(context)
                                                                    .H0,
                                                              )
                                                                  : Stack(
                                                                alignment: AlignmentDirectional
                                                                    .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .person,
                                                                    color: AppColor
                                                                        .of(
                                                                        context)
                                                                        .white_text,
                                                                    size: AppDimens
                                                                        .of(
                                                                        context)
                                                                        .H0,
                                                                  )
                                                                ],
                                                              ))),
                                                      Container(
                                                          child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                        bottom: AppDimens
                                                                            .of(
                                                                            context)
                                                                            .main_margin_small),
                                                                    child: Text(
                                                                        "Wary Velvety Beagle",
                                                                        textAlign: TextAlign
                                                                            .start,
                                                                        style: TextStyle(
                                                                            fontSize: AppDimens
                                                                                .of(
                                                                                context)
                                                                                .H2,
                                                                            fontFamily: 'AU',
                                                                            color: AppColor
                                                                                .of(
                                                                                context)
                                                                                .white_text))),
                                                                Text(
                                                                    "0x042684...5933",
                                                                    textAlign: TextAlign
                                                                        .start,
                                                                    style: TextStyle(
                                                                        fontSize: AppDimens
                                                                            .of(
                                                                            context)
                                                                            .H2,
                                                                        fontFamily: 'AU',
                                                                        color: AppColor
                                                                            .of(
                                                                            context)
                                                                            .white_text
                                                                            .withOpacity(
                                                                            0.6))),
                                                              ])),
                                                    ]),

                                                Container(
                                                    width: AppDimens
                                                        .of(context)
                                                        .main_margin_midle,
                                                    height: AppDimens
                                                        .of(context)
                                                        .main_margin_midle,
                                                    padding: EdgeInsets
                                                        .fromLTRB(0,
                                                        0, AppDimens
                                                            .of(context)
                                                            .main_margin_small,
                                                        0.0),
                                                    decoration: BoxDecoration(
                                                      color: AppColor
                                                          .of(context)
                                                          .grey_field_bg
                                                          .withOpacity(0.4),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          AppDimens
                                                              .of(context)
                                                              .corner_radius),
                                                    ),
                                                    margin: EdgeInsets.fromLTRB(
                                                        AppDimens
                                                            .of(context)
                                                            .main_margin_midle,
                                                        0,
                                                        AppDimens
                                                            .of(context)
                                                            .main_margin_midle,
                                                        0.0)),
                                              ]))))),
                          GestureDetector(
                            //You need to make my child interactive
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CreatePasswdScreen()));
                              },
                              child: Container(
                                  padding: EdgeInsets.only(top:
                                  AppDimens
                                      .of(context)
                                      .main_margin_small),
                                  margin: EdgeInsets.fromLTRB(
                                      AppDimens
                                          .of(context)
                                          .main_margin_midle,
                                      AppDimens
                                          .of(context)
                                          .main_margin_small,
                                      0,
                                      0),
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
                                                          width:
                                                          AppDimens
                                                              .of(context)
                                                              .icon_plus_height,
                                                          height:
                                                          AppDimens
                                                              .of(context)
                                                              .icon_plus_height,
                                                          decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: AppColor
                                                                    .of(context)
                                                                    .white_text,
                                                                width: 1),
                                                            borderRadius: BorderRadius
                                                                .circular(
                                                                AppDimens
                                                                    .of(context)
                                                                    .main_margin_midle),
                                                          ),
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                              0.0, 0.0,
                                                              AppDimens
                                                                  .of(context)
                                                                  .main_margin_small,
                                                              0.0),
                                                          child: ClipRRect(
                                                              borderRadius: BorderRadius
                                                                  .circular(
                                                                  AppDimens
                                                                      .of(
                                                                      context)
                                                                      .main_margin_midle),
                                                              child: photo !=
                                                                  "" &&
                                                                  photo != null
                                                                  ? Image
                                                                  .network(
                                                                photo,
                                                                width:
                                                                AppDimens
                                                                    .of(context)
                                                                    .H0,
                                                                height:
                                                                AppDimens
                                                                    .of(context)
                                                                    .H0,
                                                              )
                                                                  : Stack(
                                                                alignment: AlignmentDirectional
                                                                    .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .person,
                                                                    color: AppColor
                                                                        .of(
                                                                        context)
                                                                        .white_text,
                                                                    size: AppDimens
                                                                        .of(
                                                                        context)
                                                                        .H0,
                                                                  )
                                                                ],
                                                              ))),
                                                      Container(
                                                          child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                        bottom: AppDimens
                                                                            .of(
                                                                            context)
                                                                            .main_margin_small),
                                                                    child: Text(
                                                                        "Wary Velvety Beagle",
                                                                        textAlign: TextAlign
                                                                            .start,
                                                                        style: TextStyle(
                                                                            fontSize: AppDimens
                                                                                .of(
                                                                                context)
                                                                                .H2,
                                                                            fontFamily: 'AU',
                                                                            color: AppColor
                                                                                .of(
                                                                                context)
                                                                                .white_text))),
                                                                Text(
                                                                    "0x042684...5933",
                                                                    textAlign: TextAlign
                                                                        .start,
                                                                    style: TextStyle(
                                                                        fontSize: AppDimens
                                                                            .of(
                                                                            context)
                                                                            .H2,
                                                                        fontFamily: 'AU',
                                                                        color: AppColor
                                                                            .of(
                                                                            context)
                                                                            .white_text
                                                                            .withOpacity(
                                                                            0.6))),
                                                              ])),
                                                    ]),

                                                Container(
                                                    width: AppDimens
                                                        .of(context)
                                                        .main_margin_midle,
                                                    height: AppDimens
                                                        .of(context)
                                                        .main_margin_midle,
                                                    padding: EdgeInsets
                                                        .fromLTRB(0,
                                                        0, AppDimens
                                                            .of(context)
                                                            .main_margin_small,
                                                        0.0),
                                                    decoration: BoxDecoration(
                                                      color: AppColor
                                                          .of(context)
                                                          .grey_field_bg
                                                          .withOpacity(0.4),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          AppDimens
                                                              .of(context)
                                                              .corner_radius),
                                                    ),
                                                    margin: EdgeInsets.fromLTRB(
                                                        AppDimens
                                                            .of(context)
                                                            .main_margin_midle,
                                                        0,
                                                        AppDimens
                                                            .of(context)
                                                            .main_margin_midle,
                                                        0.0)),
                                              ]))))),
                          GestureDetector(
                            //You need to make my child interactive
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CreatePasswdScreen()));
                              },
                              child: Container(
                                  padding: EdgeInsets.only(top:
                                  AppDimens
                                      .of(context)
                                      .main_margin_small),
                                  margin: EdgeInsets.fromLTRB(
                                      AppDimens
                                          .of(context)
                                          .main_margin_midle,
                                      AppDimens
                                          .of(context)
                                          .main_margin_small,
                                      0,
                                      0),
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
                                                          width:
                                                          AppDimens
                                                              .of(context)
                                                              .icon_plus_height,
                                                          height:
                                                          AppDimens
                                                              .of(context)
                                                              .icon_plus_height,
                                                          decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: AppColor
                                                                    .of(context)
                                                                    .white_text,
                                                                width: 1),
                                                            borderRadius: BorderRadius
                                                                .circular(
                                                                AppDimens
                                                                    .of(context)
                                                                    .main_margin_midle),
                                                          ),
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                              0.0, 0.0,
                                                              AppDimens
                                                                  .of(context)
                                                                  .main_margin_small,
                                                              0.0),
                                                          child: ClipRRect(
                                                              borderRadius: BorderRadius
                                                                  .circular(
                                                                  AppDimens
                                                                      .of(
                                                                      context)
                                                                      .main_margin_midle),
                                                              child: photo !=
                                                                  "" &&
                                                                  photo != null
                                                                  ? Image
                                                                  .network(
                                                                photo,
                                                                width:
                                                                AppDimens
                                                                    .of(context)
                                                                    .H0,
                                                                height:
                                                                AppDimens
                                                                    .of(context)
                                                                    .H0,
                                                              )
                                                                  : Stack(
                                                                alignment: AlignmentDirectional
                                                                    .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .person,
                                                                    color: AppColor
                                                                        .of(
                                                                        context)
                                                                        .white_text,
                                                                    size: AppDimens
                                                                        .of(
                                                                        context)
                                                                        .H0,
                                                                  )
                                                                ],
                                                              ))),
                                                      Container(
                                                          child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                        bottom: AppDimens
                                                                            .of(
                                                                            context)
                                                                            .main_margin_small),
                                                                    child: Text(
                                                                        "Wary Velvety Beagle",
                                                                        textAlign: TextAlign
                                                                            .start,
                                                                        style: TextStyle(
                                                                            fontSize: AppDimens
                                                                                .of(
                                                                                context)
                                                                                .H2,
                                                                            fontFamily: 'AU',
                                                                            color: AppColor
                                                                                .of(
                                                                                context)
                                                                                .white_text))),
                                                                Text(
                                                                    "0x042684...5933",
                                                                    textAlign: TextAlign
                                                                        .start,
                                                                    style: TextStyle(
                                                                        fontSize: AppDimens
                                                                            .of(
                                                                            context)
                                                                            .H2,
                                                                        fontFamily: 'AU',
                                                                        color: AppColor
                                                                            .of(
                                                                            context)
                                                                            .white_text
                                                                            .withOpacity(
                                                                            0.6))),
                                                              ])),
                                                    ]),

                                                Container(
                                                    width: AppDimens
                                                        .of(context)
                                                        .main_margin_midle,
                                                    height: AppDimens
                                                        .of(context)
                                                        .main_margin_midle,
                                                    padding: EdgeInsets
                                                        .fromLTRB(0,
                                                        0, AppDimens
                                                            .of(context)
                                                            .main_margin_small,
                                                        0.0),
                                                    decoration: BoxDecoration(
                                                      color: AppColor
                                                          .of(context)
                                                          .grey_field_bg
                                                          .withOpacity(0.4),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          AppDimens
                                                              .of(context)
                                                              .corner_radius),
                                                    ),
                                                    margin: EdgeInsets.fromLTRB(
                                                        AppDimens
                                                            .of(context)
                                                            .main_margin_midle,
                                                        0,
                                                        AppDimens
                                                            .of(context)
                                                            .main_margin_midle,
                                                        0.0)),
                                              ]))))),
                          GestureDetector(
                            //You need to make my child interactive
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CreatePasswdScreen()));
                              },
                              child: Container(
                                  padding: EdgeInsets.only(top:
                                  AppDimens
                                      .of(context)
                                      .main_margin_small),
                                  margin: EdgeInsets.fromLTRB(
                                      AppDimens
                                          .of(context)
                                          .main_margin_midle,
                                      AppDimens
                                          .of(context)
                                          .main_margin_small,
                                      0,
                                      0),
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
                                                          width:
                                                          AppDimens
                                                              .of(context)
                                                              .icon_plus_height,
                                                          height:
                                                          AppDimens
                                                              .of(context)
                                                              .icon_plus_height,
                                                          decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: AppColor
                                                                    .of(context)
                                                                    .white_text,
                                                                width: 1),
                                                            borderRadius: BorderRadius
                                                                .circular(
                                                                AppDimens
                                                                    .of(context)
                                                                    .main_margin_midle),
                                                          ),
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                              0.0, 0.0,
                                                              AppDimens
                                                                  .of(context)
                                                                  .main_margin_small,
                                                              0.0),
                                                          child: ClipRRect(
                                                              borderRadius: BorderRadius
                                                                  .circular(
                                                                  AppDimens
                                                                      .of(
                                                                      context)
                                                                      .main_margin_midle),
                                                              child: photo !=
                                                                  "" &&
                                                                  photo != null
                                                                  ? Image
                                                                  .network(
                                                                photo,
                                                                width:
                                                                AppDimens
                                                                    .of(context)
                                                                    .H0,
                                                                height:
                                                                AppDimens
                                                                    .of(context)
                                                                    .H0,
                                                              )
                                                                  : Stack(
                                                                alignment: AlignmentDirectional
                                                                    .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .person,
                                                                    color: AppColor
                                                                        .of(
                                                                        context)
                                                                        .white_text,
                                                                    size: AppDimens
                                                                        .of(
                                                                        context)
                                                                        .H0,
                                                                  )
                                                                ],
                                                              ))),
                                                      Container(
                                                          child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                        bottom: AppDimens
                                                                            .of(
                                                                            context)
                                                                            .main_margin_small),
                                                                    child: Text(
                                                                        "Wary Velvety Beagle",
                                                                        textAlign: TextAlign
                                                                            .start,
                                                                        style: TextStyle(
                                                                            fontSize: AppDimens
                                                                                .of(
                                                                                context)
                                                                                .H2,
                                                                            fontFamily: 'AU',
                                                                            color: AppColor
                                                                                .of(
                                                                                context)
                                                                                .white_text))),
                                                                Text(
                                                                    "0x042684...5933",
                                                                    textAlign: TextAlign
                                                                        .start,
                                                                    style: TextStyle(
                                                                        fontSize: AppDimens
                                                                            .of(
                                                                            context)
                                                                            .H2,
                                                                        fontFamily: 'AU',
                                                                        color: AppColor
                                                                            .of(
                                                                            context)
                                                                            .white_text
                                                                            .withOpacity(
                                                                            0.6))),
                                                              ])),
                                                    ]),

                                                Container(
                                                    width: AppDimens
                                                        .of(context)
                                                        .main_margin_midle,
                                                    height: AppDimens
                                                        .of(context)
                                                        .main_margin_midle,
                                                    padding: EdgeInsets
                                                        .fromLTRB(0,
                                                        0, AppDimens
                                                            .of(context)
                                                            .main_margin_small,
                                                        0.0),
                                                    decoration: BoxDecoration(
                                                      color: AppColor
                                                          .of(context)
                                                          .grey_field_bg
                                                          .withOpacity(0.4),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          AppDimens
                                                              .of(context)
                                                              .corner_radius),
                                                    ),
                                                    margin: EdgeInsets.fromLTRB(
                                                        AppDimens
                                                            .of(context)
                                                            .main_margin_midle,
                                                        0,
                                                        AppDimens
                                                            .of(context)
                                                            .main_margin_midle,
                                                        0.0)),
                                              ]))))),
                          GestureDetector(
                            //You need to make my child interactive
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CreatePasswdScreen()));
                              },
                              child: Container(
                                  padding: EdgeInsets.only(top:
                                  AppDimens
                                      .of(context)
                                      .main_margin_small),
                                  margin: EdgeInsets.fromLTRB(
                                      AppDimens
                                          .of(context)
                                          .main_margin_midle,
                                      AppDimens
                                          .of(context)
                                          .main_margin_small,
                                      0,
                                      0),
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
                                                          width:
                                                          AppDimens
                                                              .of(context)
                                                              .icon_plus_height,
                                                          height:
                                                          AppDimens
                                                              .of(context)
                                                              .icon_plus_height,
                                                          decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: AppColor
                                                                    .of(context)
                                                                    .white_text,
                                                                width: 1),
                                                            borderRadius: BorderRadius
                                                                .circular(
                                                                AppDimens
                                                                    .of(context)
                                                                    .main_margin_midle),
                                                          ),
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                              0.0, 0.0,
                                                              AppDimens
                                                                  .of(context)
                                                                  .main_margin_small,
                                                              0.0),
                                                          child: ClipRRect(
                                                              borderRadius: BorderRadius
                                                                  .circular(
                                                                  AppDimens
                                                                      .of(
                                                                      context)
                                                                      .main_margin_midle),
                                                              child: photo !=
                                                                  "" &&
                                                                  photo != null
                                                                  ? Image
                                                                  .network(
                                                                photo,
                                                                width:
                                                                AppDimens
                                                                    .of(context)
                                                                    .H0,
                                                                height:
                                                                AppDimens
                                                                    .of(context)
                                                                    .H0,
                                                              )
                                                                  : Stack(
                                                                alignment: AlignmentDirectional
                                                                    .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .person,
                                                                    color: AppColor
                                                                        .of(
                                                                        context)
                                                                        .white_text,
                                                                    size: AppDimens
                                                                        .of(
                                                                        context)
                                                                        .H0,
                                                                  )
                                                                ],
                                                              ))),
                                                      Container(
                                                          child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                        bottom: AppDimens
                                                                            .of(
                                                                            context)
                                                                            .main_margin_small),
                                                                    child: Text(
                                                                        "Wary Velvety Beagle",
                                                                        textAlign: TextAlign
                                                                            .start,
                                                                        style: TextStyle(
                                                                            fontSize: AppDimens
                                                                                .of(
                                                                                context)
                                                                                .H2,
                                                                            fontFamily: 'AU',
                                                                            color: AppColor
                                                                                .of(
                                                                                context)
                                                                                .white_text))),
                                                                Text(
                                                                    "0x042684...5933",
                                                                    textAlign: TextAlign
                                                                        .start,
                                                                    style: TextStyle(
                                                                        fontSize: AppDimens
                                                                            .of(
                                                                            context)
                                                                            .H2,
                                                                        fontFamily: 'AU',
                                                                        color: AppColor
                                                                            .of(
                                                                            context)
                                                                            .white_text
                                                                            .withOpacity(
                                                                            0.6))),
                                                              ])),
                                                    ]),

                                                Container(
                                                    width: AppDimens
                                                        .of(context)
                                                        .main_margin_midle,
                                                    height: AppDimens
                                                        .of(context)
                                                        .main_margin_midle,
                                                    padding: EdgeInsets
                                                        .fromLTRB(0,
                                                        0, AppDimens
                                                            .of(context)
                                                            .main_margin_small,
                                                        0.0),
                                                    decoration: BoxDecoration(
                                                      color: AppColor
                                                          .of(context)
                                                          .grey_field_bg
                                                          .withOpacity(0.4),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          AppDimens
                                                              .of(context)
                                                              .corner_radius),
                                                    ),
                                                    margin: EdgeInsets.fromLTRB(
                                                        AppDimens
                                                            .of(context)
                                                            .main_margin_midle,
                                                        0,
                                                        AppDimens
                                                            .of(context)
                                                            .main_margin_midle,
                                                        0.0)),
                                              ]))))),


                          Container(
                              margin: EdgeInsets.fromLTRB(
                                  AppDimens
                                      .of(context)
                                      .main_margin,
                                  0,
                                  AppDimens
                                      .of(context)
                                      .main_margin_small,
                                  AppDimens
                                      .of(context)
                                      .main_margin_small),
                              alignment: AlignmentDirectional.centerEnd,
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CreatePasswdScreen()));
                                },
                                child: Text(
                                    AppTranslations.of(context)
                                        .text("next_text"),
                                    style: TextStyle(
                                      fontFamily: 'AU',
                                      color: AppColor
                                          .of(context)
                                          .white_text,
                                      fontSize: AppDimens
                                          .of(context)
                                          .H3,
                                    )),
                                color: Colors.transparent,
                              ))
                        ]))));
  }
}
