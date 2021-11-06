import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';

class SingleContactScreen extends StatefulWidget {

  const SingleContactScreen({Key key}) : super(key: key);

  @override
  _SingleContactScreenState createState() => _SingleContactScreenState();
}

class _SingleContactScreenState extends State<SingleContactScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String photo;
  String nick_name;

  _SingleContactScreenState();

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
    var contact_list = Column(children: [


      GestureDetector(
        //You need to make my child interactive
          onTap: () {},
          child: Container(
              padding: EdgeInsets.only(top:
              AppDimens
                  .of(context)
                  .main_margin_small),
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
                  AppDimens
                      .of(context)
                      .main_margin),
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
                                      padding: EdgeInsets.all(AppDimens
                                          .of(context)
                                          .main_margin_vsmall),
                                      decoration: BoxDecoration(
                                        color: AppColor
                                            .of(context)
                                            .red,
                                        borderRadius:
                                        BorderRadius.circular(AppDimens
                                            .of(context)
                                            .icon_padding),
                                      ),
                                      child: SvgPicture
                                          .asset("assets/images/exit_icon.svg",
                                          color: AppColor
                                              .of(context)
                                              .black_text
                                      )),
                                  Container(
                                      child: Container(
                                          padding:
                                          EdgeInsets.only(left: AppDimens
                                              .of(context)
                                              .main_margin_small),
                                          child: Text(
                                              AppTranslations.of(context)
                                                  .text("log_out_text"),
                                              style: TextStyle(
                                                  fontSize: AppDimens
                                                      .of(context)
                                                      .H1_5,
                                                  fontFamily: 'SF',
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColor
                                                      .of(context)
                                                      .red)))),
                                ]),

                          ]))))),

    ],);
    return Scaffold(
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                  elevation: 0.0,
                  actions: <Widget>[
                    GestureDetector(
                        onTap: () {
                          inDeveloping(scaffoldKey);
                        },
                        child: Padding(padding: EdgeInsets.only(right:
                        AppDimens
                            .of(context)
                            .main_margin_small),
                            child: SvgPicture.asset(
                                "assets/images/log_out_2_icon.svg"))),
                  ],
                  backgroundColor: Colors.transparent,
                  titleSpacing: 0,
                  automaticallyImplyLeading: false,
                  // Don't show the leading button
                  title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                              AppTranslations.of(context).text("back_text"),
                              textAlign: TextAlign.center,
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
                          child: SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
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
                                                .main_margin_big,
                                            AppDimens
                                                .of(context)
                                                .main_margin_midle,
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
                                                        .center,
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

                                                    ])))),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: AppDimens
                                              .of(context)
                                              .main_margin_midle),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: AppColor
                                                .of(context)
                                                .text_grey
                                                .withOpacity(0.3),
                                            width: 1.0,
                                          ),
                                        ),
                                      ),
                                    ),

                                    GestureDetector(
                                      //You need to make my child interactive
                                        onTap: () {
                                          inDeveloping(scaffoldKey);
                                        },
                                        child: Container(
                                            padding: EdgeInsets.only(right:
                                            AppDimens
                                                .of(context)
                                                .main_margin_small),
                                            margin: EdgeInsets.fromLTRB(
                                                AppDimens
                                                    .of(context)
                                                    .main_margin_midle,
                                                AppDimens
                                                    .of(context)
                                                    .main_margin_midle,
                                                AppDimens
                                                    .of(context)
                                                    .main_margin,
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
                                                                    padding: EdgeInsets
                                                                        .all(
                                                                        AppDimens
                                                                            .of(
                                                                            context)
                                                                            .main_margin_vsmall),
                                                                    decoration: BoxDecoration(
                                                                      color: AppColor
                                                                          .of(
                                                                          context)
                                                                          .main_color,
                                                                      borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                          AppDimens
                                                                              .of(
                                                                              context)
                                                                              .corner_radius),
                                                                    ),
                                                                    child: Icon(
                                                                      Icons
                                                                          .mode_comment,
                                                                      color: AppColor
                                                                          .of(
                                                                          context)
                                                                          .black_text,
                                                                      size: AppDimens
                                                                          .of(
                                                                          context)
                                                                          .H01,
                                                                    )),
                                                                Container(
                                                                    child: Container(
                                                                        padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                            left: AppDimens
                                                                                .of(
                                                                                context)
                                                                                .main_margin_small),
                                                                        child: Text(
                                                                            AppTranslations
                                                                                .of(
                                                                                context)
                                                                                .text(
                                                                                "send_message_text"),
                                                                            style: TextStyle(
                                                                                fontSize: AppDimens
                                                                                    .of(
                                                                                    context)
                                                                                    .H1_5,
                                                                                fontFamily: 'SF',
                                                                                fontWeight: FontWeight
                                                                                    .bold,
                                                                                color: AppColor
                                                                                    .of(
                                                                                    context)
                                                                                    .main_text_color)))),
                                                              ]),

                                                        ]))))),
                                    GestureDetector(
                                      //You need to make my child interactive
                                        onTap: () {
                                          inDeveloping(scaffoldKey);
                                        },
                                        child: Container(
                                            padding: EdgeInsets.only(right:
                                            AppDimens
                                                .of(context)
                                                .main_margin_small),
                                            margin: EdgeInsets.fromLTRB(
                                                AppDimens
                                                    .of(context)
                                                    .main_margin_midle,
                                                AppDimens
                                                    .of(context)
                                                    .main_margin_midle,
                                                AppDimens
                                                    .of(context)
                                                    .main_margin,
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
                                                                    padding: EdgeInsets
                                                                        .all(
                                                                        AppDimens
                                                                            .of(
                                                                            context)
                                                                            .main_margin_vsmall),
                                                                    decoration: BoxDecoration(
                                                                      color: AppColor
                                                                          .of(
                                                                          context)
                                                                          .main_color,
                                                                      borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                          AppDimens
                                                                              .of(
                                                                              context)
                                                                              .corner_radius),
                                                                    ),
                                                                    child: Icon(
                                                                      Icons
                                                                          .perm_contact_calendar_rounded,
                                                                      color: AppColor
                                                                          .of(
                                                                          context)
                                                                          .black_text,
                                                                      size: AppDimens
                                                                          .of(
                                                                          context)
                                                                          .H01,
                                                                    )),
                                                                Container(
                                                                    child: Container(
                                                                        padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                            left: AppDimens
                                                                                .of(
                                                                                context)
                                                                                .main_margin_small),
                                                                        child: Text(
                                                                            AppTranslations
                                                                                .of(
                                                                                context)
                                                                                .text(
                                                                                "remove_contacts_text"),
                                                                            style: TextStyle(
                                                                                fontSize: AppDimens
                                                                                    .of(
                                                                                    context)
                                                                                    .H1_5,
                                                                                fontFamily: 'SF',
                                                                                fontWeight: FontWeight
                                                                                    .bold,
                                                                                color: AppColor
                                                                                    .of(
                                                                                    context)
                                                                                    .main_text_color)))),
                                                              ]),

                                                        ]))))),

                                    Container(
                                      margin: EdgeInsets.only(
                                          top: AppDimens
                                              .of(context)
                                              .main_margin),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: AppColor
                                                .of(context)
                                                .text_grey
                                                .withOpacity(0.3),
                                            width: 1.0,
                                          ),
                                        ),
                                      ),
                                    ),

                                    Container(
                                        margin: EdgeInsets.all(AppDimens
                                            .of(context)
                                            .main_margin_midle),
                                        alignment: AlignmentDirectional
                                            .centerStart,
                                        child: Text(
                                            AppTranslations.of(context).text(
                                                "profile_details_text"),
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: AppDimens
                                                    .of(context)
                                                    .H2,
                                                color: AppColor
                                                    .of(context)
                                                    .white_text
                                                    .withOpacity(0.6),
                                                fontFamily: 'SF'))),

                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            AppDimens
                                                .of(context)
                                                .main_margin_midle,
                                            0,
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
                                                        .start,
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

                                                    ])))),

                                    Container(
                                        margin: EdgeInsets.all(AppDimens
                                            .of(context)
                                            .main_margin_midle),
                                        alignment: AlignmentDirectional
                                            .centerStart,
                                        child: Text(
                                            AppTranslations.of(context).text(
                                                "chat_settings_text"),
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: AppDimens
                                                    .of(context)
                                                    .H2,
                                                color: AppColor
                                                    .of(context)
                                                    .white_text
                                                    .withOpacity(0.6),
                                                fontFamily: 'SF'))),
                                    Container(
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
                                        alignment: AlignmentDirectional
                                            .centerStart,
                                        child: Text("Nickname",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: AppDimens
                                                    .of(context)
                                                    .H2,
                                                color: AppColor
                                                    .of(context)
                                                    .white_text,
                                                fontFamily: 'SF'))),
                                    Container(
                                        padding: EdgeInsets.fromLTRB(AppDimens
                                            .of(context)
                                            .main_margin_small,
                                            0, AppDimens
                                                .of(context)
                                                .main_margin_small, 0.0),
                                        decoration: BoxDecoration(
                                          color: AppColor
                                              .of(context)
                                              .grey_field_bg
                                              .withOpacity(0.4),
                                          borderRadius:
                                          BorderRadius.circular(AppDimens
                                              .of(context)
                                              .corner_radius),
                                        ),
                                        margin: EdgeInsets.fromLTRB(AppDimens
                                            .of(context)
                                            .main_margin_midle, 0,
                                            AppDimens
                                                .of(context)
                                                .main_margin_midle, 0.0),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              contentPadding: EdgeInsets.all(
                                                  0.0),
                                              hintText: "None",
                                              hintStyle: TextStyle(
                                                color: AppColor
                                                    .of(context)
                                                    .white_text
                                                    .withOpacity(0.6),
                                                fontFamily: "SF",
                                              )),
                                          textCapitalization: TextCapitalization
                                              .sentences,
                                          onChanged: (val) {
                                            nick_name = val;
                                          },
                                          keyboardType: TextInputType.text,
                                          style: TextStyle(
                                            color: AppColor
                                                .of(context)
                                                .white_text
                                                .withOpacity(0.6),
                                            fontFamily: "SF",
                                          ),
                                        )),
                                    GestureDetector(
                                      //You need to make my child interactive
                                        onTap: () {
                                          _onWillPop();
                                        },
                                        child: Container(
                                            padding: EdgeInsets.only(right:
                                            AppDimens
                                                .of(context)
                                                .main_margin_small),
                                            margin: EdgeInsets.fromLTRB(
                                                AppDimens
                                                    .of(context)
                                                    .main_margin_midle,
                                                AppDimens
                                                    .of(context)
                                                    .main_margin_midle,
                                                AppDimens
                                                    .of(context)
                                                    .main_margin,
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
                                                                    padding: EdgeInsets
                                                                        .all(
                                                                        AppDimens
                                                                            .of(
                                                                            context)
                                                                            .main_margin_vsmall),
                                                                    decoration: BoxDecoration(
                                                                      color: AppColor
                                                                          .of(
                                                                          context)
                                                                          .red,
                                                                      borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                          AppDimens
                                                                              .of(
                                                                              context)
                                                                              .corner_radius),
                                                                    ),
                                                                    child: Icon(
                                                                      Icons
                                                                          .close,
                                                                      color: AppColor
                                                                          .of(
                                                                          context)
                                                                          .black_text,
                                                                      size: AppDimens
                                                                          .of(
                                                                          context)
                                                                          .H01,
                                                                    )),
                                                                Container(
                                                                    child: Container(
                                                                        padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                            left: AppDimens
                                                                                .of(
                                                                                context)
                                                                                .main_margin_small),
                                                                        child: Text(
                                                                            AppTranslations
                                                                                .of(
                                                                                context)
                                                                                .text(
                                                                                "block_user_text"),
                                                                            style: TextStyle(
                                                                                fontSize: AppDimens
                                                                                    .of(
                                                                                    context)
                                                                                    .H1_5,
                                                                                fontFamily: 'SF',
                                                                                fontWeight: FontWeight
                                                                                    .bold,
                                                                                color: AppColor
                                                                                    .of(
                                                                                    context)
                                                                                    .red)))),
                                                              ]),

                                                        ]))))),
                                  ])))));
  }

  _onWillPop() async {
    return (await showDialog(
        context: context,
        builder: (context) =>
            Dialog(
              backgroundColor: AppColor
                  .of(context)
                  .lite_black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppDimens
                          .of(context)
                          .corner_radius))),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.fromLTRB(
                          AppDimens
                              .of(context)
                              .main_margin,
                          AppDimens
                              .of(context)
                              .main_margin,
                          AppDimens
                              .of(context)
                              .main_margin,
                          0),
                      child: Text(
                          AppTranslations.of(context).text(
                              'back_pressed_text1'),
                          style: TextStyle(
                              fontSize: AppDimens
                                  .of(context)
                                  .H1_5,
                              color: AppColor
                                  .of(context)
                                  .white_text))),
                  Container(
                      padding: EdgeInsets.fromLTRB(
                          AppDimens
                              .of(context)
                              .main_margin,
                          AppDimens
                              .of(context)
                              .main_margin_small,
                          AppDimens
                              .of(context)
                              .main_margin,
                          AppDimens
                              .of(context)
                              .main_margin),
                      child: Text(
                          AppTranslations.of(context).text('user_name_text4'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColor
                                  .of(context)
                                  .white_text))),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  color: AppColor
                                      .of(context)
                                      .text_grey
                                      .withOpacity(0.3),
                                  width: 0.5,
                                ),
                                top: BorderSide(
                                  color: AppColor
                                      .of(context)
                                      .text_grey
                                      .withOpacity(0.3),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: FlatButton(
                                onPressed: () =>
                                    Navigator.of(context).pop(false),
                                child: Container(
                                    child: Center(
                                      child: Text(
                                        AppTranslations.of(context).text(
                                            'no_text'),
                                        style: TextStyle(
                                            fontSize: AppDimens
                                                .of(context)
                                                .H2,
                                            color: AppColor
                                                .of(context)
                                                .main_text_color),
                                      ),
                                    ))))),

                       Expanded(child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                  color: AppColor
                                      .of(context)
                                      .text_grey
                                      .withOpacity(0.3),
                                  width: 0.5,
                                ),
                                top: BorderSide(
                                  color: AppColor
                                      .of(context)
                                      .text_grey
                                      .withOpacity(0.3),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  inDeveloping(scaffoldKey);
//                deleteSharedData(Constants().a);
                                },
                                child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                        AppDimens
                                            .of(context)
                                            .main_margin,
                                        AppDimens
                                            .of(context)
                                            .main_margin_small,
                                        AppDimens
                                            .of(context)
                                            .main_margin,
                                        AppDimens
                                            .of(context)
                                            .main_margin_small),
                                    child: Center(
                                        child: Text(
                                            AppTranslations.of(context)
                                                .text('yes_text'),
                                            style: TextStyle(
                                                fontSize: AppDimens
                                                    .of(context)
                                                    .H2,
                                                color: AppColor
                                                    .of(context)
                                                    .main_text_color))))))),
                      ])
                ],
              ),
            )));
  }
}
