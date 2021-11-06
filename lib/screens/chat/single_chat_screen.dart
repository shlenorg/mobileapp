import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/networks/models/body_models.dart';
import 'package:shlen/networks/rest_client.dart';
import 'package:shlen/utils/constants.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class SingleChatScreen extends StatefulWidget {
  final String chat_id;

  final RegUserBody regUserBody;

  const SingleChatScreen({Key key, this.regUserBody, this.chat_id})
      : super(key: key);

  @override
  _SingleChatScreenState createState() =>
      _SingleChatScreenState(regUserBody, chat_id);
}

class _SingleChatScreenState extends State<SingleChatScreen>
    with SingleTickerProviderStateMixin {
  final RegUserBody regUserBody;
  TextEditingController _controller = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<ChatMessageBody> arrayOfProducts = [];
  ScrollController controller;
  bool isPageLoading = false;
  int totalRecord = 0;
  String message = "";
  String photo;

  // final List<String> get_chat =[
  //   """{"id":"117","chat_id":"73","user":"V4V5WWt3_51FR8SWlj_29ao3scSRjrXx","message":"привет","date":"2020-12-07","time":"14:20:19","users":[{"id":"48","email":"test@test.com","phone":"380639542110","password":"\$2y\$13\$rkLfQWKiDPfX5zoSQLzVf.7QYQQdDCWqFMTAOmakDoUDyVMU8wnS6","user_key":"V4V5WWt3_51FR8SWlj_29ao3scSRjrXx","first_name":"dasd","last_name":"asdad","city":"Киев","adress_delivery":"Киев","photo_big":"contact_map-19-11-20-10-38-28.png","uid":"","network":"site","ref_id":"43","experience":"1460","experience_bool":"1","level":"1","cashback":"19809.28","cashback_date":"2020-11-19","admin":"1","friends":""}]}""","""{"id":"116","chat_id":"73","user":"V4V5WWt3_51FR8SWlj_29ao3scSRjrXx","message":"привет","date":"2020-12-07","time":"14:12:34","users":[{"id":"48","email":"test@test.com","phone":"380639542110","password":"\$2y\$13\$rkLfQWKiDPfX5zoSQLzVf.7QYQQdDCWqFMTAOmakDoUDyVMU8wnS6","user_key":"V4V5WWt3_51FR8SWlj_29ao3scSRjrXx","first_name":"dasd","last_name":"asdad","city":"Киев","adress_delivery":"Киев","photo_big":"contact_map-19-11-20-10-38-28.png","uid":"","network":"site","ref_id":"43","experience":"1460","experience_bool":"1","level":"1","cashback":"19809.28","cashback_date":"2020-11-19","admin":"1"}""","""{"id":"104","chat_id":"73","user":"CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR","message":"Gggh","date":"2020-12-03","time":"00:04:00","users":[{"id":"88","email":"paladin.grough@gmail.com","phone":"380637575689","password":"\$2y\$13\$OAI0tGU/ObrbFdHpNl0vFuXUysOzHOwvUCPTLqSzBWjnpE493Qnvi","user_key":"CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR","first_name":"Ivan","last_name":"Ivanov","city":"","adress_delivery":"","photo_big":"","uid":"","network":"site","ref_id":"0","level":"1","cashback":"9201.09","cashback_date":"2020-11-19","admin":"0","friends":""}]}""", """{"id":"101","chat_id":"73","user":"CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR","message":"vgffhj","date":"2020-12-02","time":"23:30:12","users":[{"id":"88","email":"paladin.grough@gmail.com","phone":"380637575689","password":"\$2y\$13\$OAI0tGU/ObrbFdHpNl0vFuXUysOzHOwvUCPTLqSzBWjnpE493Qnvi","user_key":"CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR","first_name":"Ivan","last_name":"Ivanov","city":"","adress_delivery":"","photo_big":"","uid":"","network":"site","ref_id":"0","level":"1","cashback":"9201.09","cashback_date":"2020-11-19","admin":"0"}""","""{"id":"100","chat_id":"73","user":"CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR","message":"bfghk","date":"2020-12-02","time":"23:30:07","users":[{"id":"88","email":"paladin.grough@gmail.com","phone":"380637575689","password":"\$2y\$13\$OAI0tGU/ObrbFdHpNl0vFuXUysOzHOwvUCPTLqSzBWjnpE493Qnvi","user_key":"CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR","first_name":"Ivan","last_name":"Ivanov","city":"","adress_delivery":"","photo_big":"","uid":"","network":"site","ref_id":"0","like_places":"","like_tickets":"","like_events":"","experience":"0","experience_bool":"0","level":"1","cashback":"9201.09","cashback_date":"2020-11-19","admin":"0","friends":""}]}""","""{"id":"99","chat_id":"73","user":"CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR","message":"Gfbb","date":"2020-12-02","time":"23:30:05","users":[{"id":"88","email":"paladin.grough@gmail.com","phone":"380637575689","password":"\$2y\$13\$OAI0tGU/ObrbFdHpNl0vFuXUysOzHOwvUCPTLqSzBWjnpE493Qnvi","user_key":"CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR","first_name":"Ivan","last_name":"Ivanov","city":"","adress_delivery":"","photo_big":"","uid":"","network":"site","ref_id":"0","like_places":"","like_tickets":"","like_events":"","experience":"0","experience_bool":"0","level":"1","cashback":"9201.09","cashback_date":"2020-11-19","admin":"0"}""","""{"id":"98","chat_id":"73","user":"V4V5WWt3_51FR8SWlj_29ao3scSRjrXx","message":"Gffv","date":"2020-12-02","time":"23:28:13","users":[{"id":"48","email":"test@test.com","phone":"380639542110","password":"\$2y\$13\$rkLfQWKiDPfX5zoSQLzVf.7QYQQdDCWqFMTAOmakDoUDyVMU8wnS6","user_key":"V4V5WWt3_51FR8SWlj_29ao3scSRjrXx","first_name":"dasd","last_name":"asdad","city":"Киев","adress_delivery":"Киев","photo_big":"contact_map-19-11-20-10-38-28.png","uid":"","network":"site","ref_id":"43","experience":"1460","experience_bool":"1","level":"1","cashback":"19809.28","cashback_date":"2020-11-19","admin":"1","friends":""}]}""","""{"id":"96","chat_id":"73","user":"aAme5muIgr4KmBhDVTLyttpP3ocQ1tb5","message":"Привіт","date":"2020-12-02","time":"14:27:21","users":[]}""","""{"id":"93","chat_id":"73","user":"V4V5WWt3_51FR8SWlj_29ao3scSRjrXx","message":"vffg","date":"2020-12-02","time":"14:16:50","users":[{"id":"48","email":"test@test.com","phone":"380639542110","password":"\$2y\$13\$rkLfQWKiDPfX5zoSQLzVf.7QYQQdDCWqFMTAOmakDoUDyVMU8wnS6","user_key":"V4V5WWt3_51FR8SWlj_29ao3scSRjrXx","first_name":"dasd","last_name":"asdad","city":"Киев","adress_delivery":"Киев","photo_big":"contact_map-19-11-20-10-38-28.png","uid":"","network":"site","ref_id":"43","experience":"1460","experience_bool":"1","level":"1","cashback":"19809.28","cashback_date":"2020-11-19","admin":"1","friends":""}]}""","""{"id":"92","chat_id":"73","user":"V4V5WWt3_51FR8SWlj_29ao3scSRjrXx","message":"Hfgg","date":"2020-12-02","time":"14:16:47","users":[{"id":"48","email":"test@test.com","phone":"380639542110","password":"\$2y\$13\$rkLfQWKiDPfX5zoSQLzVf.7QYQQdDCWqFMTAOmakDoUDyVMU8wnS6","user_key":"V4V5WWt3_51FR8SWlj_29ao3scSRjrXx","first_name":"dasd","last_name":"asdad","city":"Киев","adress_delivery":"Киев","photo_big":"contact_map-19-11-20-10-38-28.png","uid":"","network":"site","ref_id":"43","experience":"1460","experience_bool":"1","level":"1","cashback":"19809.28","cashback_date":"2020-11-19","admin":"1","friends":""}]}""","""{"id":"90","chat_id":"73","user":"CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR","message":"Jcchjj","date":"2020-12-02","time":"14:16:01","users":[{"id":"88","email":"paladin.grough@gmail.com","phone":"380637575689","password":"\$2y\$13\$OAI0tGU/ObrbFdHpNl0vFuXUysOzHOwvUCPTLqSzBWjnpE493Qnvi","user_key":"CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR","first_name":"Ivan","last_name":"Ivanov","city":"","adress_delivery":"","photo_big":"","uid":"","network":"site","ref_id":"0","like_places":"","like_tickets":"","like_events":"","experience":"0","experience_bool":"0","level":"1","cashback":"9201.09","cashback_date":"2020-11-19","admin":"0","friends":""}]}""","""{"id":"87","chat_id":"73","user":"V4V5WWt3_51FR8SWlj_29ao3scSRjrXx","message":"fddfhj","date":"2020-12-02","time":"14:15:11","users":[{"id":"48","email":"test@test.com","phone":"380639542110","password":"\$2y\$13\$rkLfQWKiDPfX5zoSQLzVf.7QYQQdDCWqFMTAOmakDoUDyVMU8wnS6","user_key":"V4V5WWt3_51FR8SWlj_29ao3scSRjrXx","first_name":"dasd","last_name":"asdad","city":"Киев","adress_delivery":"Киев","photo_big":"contact_map-19-11-20-10-38-28.png","uid":"","network":"site","ref_id":"43","experience":"1460","experience_bool":"1","level":"1","cashback":"19809.28","cashback_date":"2020-11-19","admin":"1","friends":""}]}""","""{"id":"86","chat_id":"73","user":"V4V5WWt3_51FR8SWlj_29ao3scSRjrXx","message":"Dfhjj","date":"2020-12-02","time":"14:15:08","users":[{"id":"48","email":"test@test.com","phone":"380639542110","password":"\$2y\$13\$rkLfQWKiDPfX5zoSQLzVf.7QYQQdDCWqFMTAOmakDoUDyVMU8wnS6","user_key":"V4V5WWt3_51FR8SWlj_29ao3scSRjrXx","first_name":"dasd","last_name":"asdad","city":"Киев","adress_delivery":"Киев","photo_big":"contact_map-19-11-20-10-38-28.png","uid":"","network":"site","ref_id":"43","experience":"1460","experience_bool":"1","level":"1","cashback":"19809.28","cashback_date":"2020-11-19","admin":"1","friends":""}]}"""];


  final String chat_id;

  _SingleChatScreenState(this.regUserBody, this.chat_id);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = ScrollController();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _getBooksList(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    var top_headert = Container(
        child: Center(
            child: Container(
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
                              .main_margin,
                          height:
                          AppDimens
                              .of(context)
                              .main_margin,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColor
                                    .of(context)
                                    .white_text, width: 1),
                            borderRadius: BorderRadius.circular(
                                AppDimens
                                    .of(context)
                                    .main_margin_small),
                          ),
                          margin: EdgeInsets.fromLTRB(0.0, 0.0,
                              AppDimens
                                  .of(context)
                                  .main_margin_small, 0.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  AppDimens
                                      .of(context)
                                      .main_margin_midle),
                              child: photo != "" &&
                                  photo != null
                                  ? Image.network(
                                photo,
                                width:
                                AppDimens
                                    .of(context)
                                    .main_margin,
                                height:
                                AppDimens
                                    .of(context)
                                    .main_margin,
                              )
                                  : Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: AppColor
                                        .of(context)
                                        .white_text,
                                    size: AppDimens
                                        .of(context)
                                        .main_margin_midle,
                                  )
                                ],
                              ))),
                      Container(
                          width: MediaQuery.of(context).size.width - 190,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Row(children: [
                                      Flexible(child: Text("Wary Velvety Beagle",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: AppDimens
                                            .of(context)
                                            .H3, fontFamily: 'AU',
                                            color: AppColor
                                                .of(context)
                                                .white_text)))
                                    ]),
                                Text(AppTranslations.of(context).text("not_contact_text"),
                                    textAlign: TextAlign.start,
                                    style: TextStyle(fontSize: AppDimens
                                        .of(context)
                                        .H3, fontFamily: 'AU',
                                        color: AppColor
                                            .of(context)
                                            .white_text
                                            .withOpacity(0.6))),

                              ])),

                    ]))));

    var chatList = Container(
        margin: EdgeInsets.all(0.0),
        child: ListView(
            children: <Widget>[
              ListView.builder(
                  controller: controller,
                  physics: ScrollPhysics(),
                  reverse: true,
                  shrinkWrap: true,
                  itemCount: arrayOfProducts.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return arrayOfProducts.length != 0 ?
                    Container(
                      // constraints: BoxConstraints(
                      // maxWidth: MediaQuery
                      //     .of(context)
                      //     .size
                      //     .width / 1.5),
                        padding: EdgeInsets.all(AppDimens
                            .of(context)
                            .main_margin_small),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(
                                  AppDimens
                                      .of(context)
                                      .corner_radius),
                            ),
                            child: Column(
                              children: [
                                // arrayOfProducts[index].last_name != null
                                arrayOfProducts[index].user_key !=
                                    regUserBody.user_key ?
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [

                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left:
                                                    AppDimens
                                                        .of(context)
                                                        .main_margin_big,
                                                bottom: AppDimens
                                                    .of(context)
                                                    .icon_padding),
                                                child: Text(
                                                    arrayOfProducts[index]
                                                        .first_name + " " +
                                                        arrayOfProducts[index]
                                                            .last_name,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        fontSize: AppDimens
                                                            .of(context)
                                                            .H4,
                                                        color: AppColor
                                                            .of(context)
                                                            .text_grey
                                                            .withOpacity(0.6),
                                                        fontFamily: 'SF'))),
                                            Row(children: [
                                              Container(
                                                  width: AppDimens
                                                      .of(
                                                      context)
                                                      .icon_logo_height,
                                                  height: AppDimens
                                                      .of(
                                                      context)
                                                      .icon_logo_height,
                                                  decoration:
                                                  BoxDecoration(
                                                    border: Border.all(
                                                        color: AppColor
                                                            .of(
                                                            context)
                                                            .white_text,
                                                        width: 1),
                                                    borderRadius: BorderRadius
                                                        .circular(AppDimens
                                                        .of(context)
                                                        .main_margin_small),
                                                  ),
                                                  margin: EdgeInsets.fromLTRB(
                                                      AppDimens
                                                          .of(context)
                                                          .main_margin_small,
                                                      0.0,
                                                      AppDimens
                                                          .of(context)
                                                          .main_margin_small,
                                                      0.0),
                                                  child: ClipRRect(
                                                      borderRadius: BorderRadius
                                                          .circular(AppDimens
                                                          .of(
                                                          context)
                                                          .main_margin_midle),
                                                      child:
                                                      arrayOfProducts[index]
                                                          .photo != "" &&
                                                          arrayOfProducts[index]
                                                              .photo != null
                                                          ? Image.network(
                                                        arrayOfProducts[index]
                                                            .photo,
                                                        width:
                                                        AppDimens
                                                            .of(context)
                                                            .main_margin,
                                                        height:
                                                        AppDimens
                                                            .of(context)
                                                            .main_margin,
                                                      )
                                                          : Stack(
                                                        alignment:
                                                        AlignmentDirectional
                                                            .center,
                                                        children: [
                                                          Icon(
                                                            Icons.person,
                                                            color:
                                                            AppColor
                                                                .of(context)
                                                                .white_text,
                                                            size:
                                                            AppDimens
                                                                .of(context)
                                                                .H0,
                                                          )
                                                        ],
                                                      ))),
                                                      Container(
                                                      constraints: BoxConstraints(
                                                          maxWidth: MediaQuery
                                                              .of(context)
                                                              .size
                                                              .width / 1.5),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius
                                                              .only(
                                                              bottomRight: Radius
                                                                  .circular(
                                                                  AppDimens
                                                                      .of(
                                                                      context)
                                                                      .corner_radius),
                                                              topLeft: Radius
                                                                  .circular(
                                                                  AppDimens
                                                                      .of(
                                                                      context)
                                                                      .corner_radius),
                                                              topRight: Radius
                                                                  .circular(
                                                                  AppDimens
                                                                      .of(
                                                                      context)
                                                                      .corner_radius)),
                                                          color: AppColor
                                                              .of(context)
                                                              .chat_lite_black
                                                      ),
                                                      padding: EdgeInsets.all(
                                                          AppDimens
                                                              .of(context)
                                                              .main_margin_small),
                                                      child: Padding(
                                                          padding: EdgeInsets
                                                              .only(
                                                              bottom:
                                                              AppDimens
                                                                  .of(context)
                                                                  .icon_padding),
                                                          child: Row(
                                                              mainAxisSize: MainAxisSize
                                                                  .min,
                                                              children: [
                                                                Flexible(
                                                                    child: Text(
                                                                        arrayOfProducts[index]
                                                                            .message,
                                                                        textAlign: TextAlign
                                                                            .start,
                                                                        style: TextStyle(
                                                                            fontSize: AppDimens
                                                                                .of(
                                                                                context)
                                                                                .H2,
                                                                            color: AppColor
                                                                                .of(
                                                                                context)
                                                                                .white_text,
                                                                            fontFamily: 'SF')))
                                                              ]))),

                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left:
                                                      AppDimens
                                                          .of(context)
                                                          .main_margin_small),
                                                  child: Text(
                                                      arrayOfProducts[index]
                                                          .time
                                                          .substring(0, 5),

                                                      textAlign: TextAlign
                                                          .start,
                                                      style: TextStyle(
                                                          fontSize: AppDimens
                                                              .of(context)
                                                              .H4,
                                                          color: AppColor
                                                              .of(context)
                                                              .text_grey
                                                              .withOpacity(0.6),
                                                          fontFamily: 'SF'))),
                                            ],)
                                          ])
                                    ]) :
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .end,
                                        children: [

                                          Padding(
                                              padding: EdgeInsets.only(
                                                  right:
                                                  AppDimens
                                                      .of(context)
                                                      .main_margin_big,
                                                  bottom: AppDimens
                                                      .of(context)
                                                      .icon_padding),
                                              child: Text(
                                                  arrayOfProducts[index]
                                                      .first_name +
                                                      " " +
                                                      arrayOfProducts[index]
                                                          .last_name,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontSize: AppDimens
                                                          .of(context)
                                                          .H4,
                                                      color: AppColor
                                                          .of(context)
                                                          .text_grey
                                                          .withOpacity(0.6),
                                                      fontFamily: 'SF'))),
                                          Row(children: [

                                            Padding(
                                                padding: EdgeInsets.only(
                                                    right:
                                                    AppDimens
                                                        .of(context)
                                                        .main_margin_small),
                                                child: Text(
                                                    arrayOfProducts[index].time
                                                        .substring(0, 5),

                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        fontSize: AppDimens
                                                            .of(context)
                                                            .H4,
                                                        color: AppColor
                                                            .of(context)
                                                            .text_grey
                                                            .withOpacity(0.6),
                                                        fontFamily: 'SF'))),
                                            Container(
                                                    constraints: BoxConstraints(
                                                        maxWidth: MediaQuery
                                                            .of(context)
                                                            .size
                                                            .width / 1.5),
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius
                                                            .only(
                                                            bottomLeft: Radius
                                                                .circular(
                                                                AppDimens
                                                                    .of(context)
                                                                    .corner_radius),
                                                            topLeft: Radius
                                                                .circular(
                                                                AppDimens
                                                                    .of(context)
                                                                    .corner_radius),
                                                            topRight: Radius
                                                                .circular(
                                                                AppDimens
                                                                    .of(context)
                                                                    .corner_radius)),
                                                        color: AppColor
                                                            .of(context)
                                                            .chat_lite_black
                                                    ),
                                                    padding: EdgeInsets.all(
                                                        AppDimens
                                                            .of(context)
                                                            .main_margin_small),
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize
                                                          .min,
                                                      children: [

                                                        Flexible(child: Text(
                                                            arrayOfProducts[index]
                                                                .message,
                                                            textAlign: TextAlign
                                                                .start,
                                                            style: TextStyle(
                                                                fontSize: AppDimens
                                                                    .of(context)
                                                                    .H2,
                                                                color: AppColor
                                                                    .of(context)
                                                                    .white_text,
                                                                fontFamily: 'SF'))),

                                                      ],)
                                                ),

                                            Container(
                                                width: AppDimens
                                                    .of(
                                                    context)
                                                    .icon_logo_height,
                                                height: AppDimens
                                                    .of(
                                                    context)
                                                    .icon_logo_height,
                                                decoration:
                                                BoxDecoration(
                                                  border: Border.all(
                                                      color: AppColor
                                                          .of(
                                                          context)
                                                          .white_text,
                                                      width: 1),
                                                  borderRadius: BorderRadius
                                                      .circular(AppDimens
                                                      .of(context)
                                                      .main_margin_small),
                                                ),
                                                margin: EdgeInsets.fromLTRB(
                                                    AppDimens
                                                        .of(context)
                                                        .main_margin_small,
                                                    0.0,
                                                    AppDimens
                                                        .of(context)
                                                        .main_margin_small,
                                                    0.0),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius
                                                        .circular(AppDimens
                                                        .of(
                                                        context)
                                                        .main_margin_midle),
                                                    child:
                                                    arrayOfProducts[index]
                                                        .photo != "" &&
                                                        arrayOfProducts[index]
                                                            .photo != null
                                                        ? Image.network(
                                                      arrayOfProducts[index]
                                                          .photo,
                                                      width:
                                                      AppDimens
                                                          .of(context)
                                                          .main_margin,
                                                      height:
                                                      AppDimens
                                                          .of(context)
                                                          .main_margin,
                                                    )
                                                        : Stack(
                                                      alignment:
                                                      AlignmentDirectional
                                                          .center,
                                                      children: [
                                                        Icon(
                                                          Icons.person,
                                                          color:
                                                          AppColor
                                                              .of(context)
                                                              .white_text,
                                                          size:
                                                          AppDimens
                                                              .of(context)
                                                              .H0,
                                                        )
                                                      ],
                                                    ))),
                                          ]),
                                        ],)
                                    ])
                              ],
                            ))) : Container(
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
                              .main_margin_small),
                      child: Center(
                        child: Text(
                            AppTranslations.of(context)
                                .text("nothing_found_text"),
                            style: TextStyle(
                                fontSize: AppDimens
                                    .of(context)
                                    .H2,
                                fontFamily: 'SF')),
                      ),
                    );
                  }),

              Container(
                padding: EdgeInsets.only(top: AppDimens
                    .of(context)
                    .main_margin_small,),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start,
                          children: [

                            Padding(
                                padding: EdgeInsets.only(
                                    left:
                                    AppDimens
                                        .of(context)
                                        .main_margin_mbig,
                                    bottom: AppDimens
                                        .of(context)
                                        .icon_padding),
                                child: Text(
                                    "user1",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: AppDimens
                                            .of(context)
                                            .H4,
                                        color: AppColor
                                            .of(context)
                                            .text_grey
                                            .withOpacity(0.6),
                                        fontFamily: 'SF'))),
                            Row(crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                    width: AppDimens
                                        .of(
                                        context)
                                        .icon_logo_height,
                                    height: AppDimens
                                        .of(
                                        context)
                                        .icon_logo_height,
                                    decoration:
                                    BoxDecoration(
                                      border: Border.all(
                                          color: AppColor
                                              .of(
                                              context)
                                              .white_text,
                                          width: 1),
                                      borderRadius: BorderRadius
                                          .circular(AppDimens
                                          .of(context)
                                          .main_margin_small),
                                    ),
                                    margin: EdgeInsets.fromLTRB(
                                        AppDimens
                                            .of(context)
                                            .main_margin_midle,
                                        0.0,
                                        AppDimens
                                            .of(context)
                                            .main_margin_small,
                                        0.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius
                                            .circular(AppDimens
                                            .of(
                                            context)
                                            .main_margin_midle),
                                        child: photo != "" &&
                                            photo != null
                                            ? Image.network(
                                          photo,
                                          width:
                                          AppDimens
                                              .of(context)
                                              .main_margin,
                                          height:
                                          AppDimens
                                              .of(context)
                                              .main_margin,
                                        )
                                            : Stack(
                                          alignment:
                                          AlignmentDirectional.center,
                                          children: [
                                            Icon(
                                              Icons.person,
                                              color:
                                              AppColor
                                                  .of(context)
                                                  .white_text,
                                              size:
                                              AppDimens
                                                  .of(context)
                                                  .H0,
                                            )
                                          ],
                                        ))),
                                Container(
                                        constraints: BoxConstraints(
                                            maxWidth: 210),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius
                                                .only(
                                                bottomRight: Radius
                                                    .circular(
                                                    AppDimens
                                                        .of(context)
                                                        .corner_radius),
                                                topLeft: Radius
                                                    .circular(
                                                    AppDimens
                                                        .of(context)
                                                        .corner_radius),
                                                topRight: Radius
                                                    .circular(
                                                    AppDimens
                                                        .of(context)
                                                        .corner_radius)),
                                            color: AppColor
                                                .of(context)
                                                .chat_lite_black
                                        ),
                                        padding: EdgeInsets.all(
                                            AppDimens
                                                .of(context)
                                                .main_margin_small),
                                        child: Padding(
                                            padding: EdgeInsets
                                                .only(
                                                bottom:
                                                AppDimens
                                                    .of(context)
                                                    .icon_padding),
                                            child: Row(
                                                mainAxisSize: MainAxisSize
                                                    .min,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Container(
                                                        // margin: EdgeInsets.only(
                                                        //     top: AppDimens.of(
                                                        //         context)
                                                        //         .main_margin_small),
                                                        child:
                                                        Row(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Container(
                                                                  child: SvgPicture
                                                                      .asset(
                                                                      "assets/images/down_arrow_icon.svg"
                                                                  )),
                                                              Container(
                                                                // margin: EdgeInsets.fromLTRB(
                                                                //     0.0,
                                                                //     AppDimens.of(context)
                                                                //         .main_margin_small,
                                                                //     AppDimens.of(context)
                                                                //         .main_margin_small,
                                                                //     AppDimens.of(context)
                                                                //         .main_margin_small),
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
                                                                              "incoming_transaction_text"),
                                                                          style: TextStyle(
                                                                              fontSize: AppDimens
                                                                                  .of(
                                                                                  context)
                                                                                  .H4,
                                                                              fontFamily: 'SF',
                                                                              color: AppColor
                                                                                  .of(
                                                                                  context)
                                                                                  .white_text
                                                                                  .withOpacity(
                                                                                  0.6))))),
                                                            ]),),
                                                      Container(
                                                        // margin: EdgeInsets.only(
                                                        //     top: AppDimens.of(
                                                        //         context)
                                                        //         .main_margin_small),
                                                        child:
                                                        Row(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Container(
                                                                  child: SvgPicture
                                                                      .asset(
                                                                      "assets/images/etherium_icon.svg"
                                                                  )),
                                                              Container(
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                      0.0,
                                                                      AppDimens
                                                                          .of(
                                                                          context)
                                                                          .main_margin_small,
                                                                      AppDimens
                                                                          .of(
                                                                          context)
                                                                          .main_margin_small,
                                                                      AppDimens
                                                                          .of(
                                                                          context)
                                                                          .main_margin_small),
                                                                  child: Container(
                                                                      padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                          left: AppDimens
                                                                              .of(
                                                                              context)
                                                                              .main_margin_small),
                                                                      child: Text(
                                                                          "0.01 ETH",
                                                                          style: TextStyle(
                                                                              fontSize: AppDimens
                                                                                  .of(
                                                                                  context)
                                                                                  .H1_5,
                                                                              fontFamily: 'AU',
                                                                              color: AppColor
                                                                                  .of(
                                                                                  context)
                                                                                  .white_text)))),
                                                            ]),),
                                                      Container(
                                                          child: Text(
                                                              "4.05 USD",
                                                              style: TextStyle(
                                                                  fontSize: AppDimens
                                                                      .of(
                                                                      context)
                                                                      .H2,
                                                                  fontFamily: 'AU',
                                                                  color: AppColor
                                                                      .of(
                                                                      context)
                                                                      .grey))),
                                                      Container(
                                                        child: FlatButton(
                                                          padding: EdgeInsets
                                                              .fromLTRB(AppDimens
                                                              .of(
                                                              context)
                                                              .icon_padding, 0, AppDimens
                                                              .of(
                                                              context)
                                                              .icon_padding, 0),
                                                            onPressed: () {
                                                              inDeveloping(
                                                                  scaffoldKey);
                                                            },
                                                            child: Container(
                                                                decoration:
                                                                BoxDecoration(
                                                                  border: Border
                                                                      .all(
                                                                      color: AppColor
                                                                          .of(
                                                                          context)
                                                                          .white_text,
                                                                      width: 1),
                                                                  borderRadius: BorderRadius
                                                                      .circular(
                                                                      AppDimens
                                                                          .of(
                                                                          context)
                                                                          .main_margin_small),
                                                                ),
                                                                padding: EdgeInsets
                                                                    .fromLTRB(
                                                                    AppDimens
                                                                        .of(
                                                                        context)
                                                                        .main_margin,
                                                                    AppDimens
                                                                        .of(
                                                                        context)
                                                                        .icon_padding,
                                                                    AppDimens
                                                                        .of(
                                                                        context)
                                                                        .main_margin,
                                                                    AppDimens
                                                                        .of(
                                                                        context)
                                                                        .icon_padding),
                                                                child: Center(
                                                                    child: Text(
                                                                        AppTranslations
                                                                            .of(
                                                                            context)
                                                                            .text(
                                                                            'address_requested_text'),
                                                                        style: TextStyle(
                                                                            fontSize: AppDimens
                                                                                .of(
                                                                                context)
                                                                                .H4,
                                                                            color: AppColor
                                                                                .of(
                                                                                context)
                                                                                .grey))))),),
                                                      Container(
                                                          constraints: BoxConstraints(
                                                              maxWidth: 170),
                                                          alignment: AlignmentDirectional
                                                              .center,
                                                          child: Text(
                                                              AppTranslations
                                                                  .of(
                                                                  context)
                                                                  .text(
                                                                  "decline_text"),
                                                              textAlign: TextAlign
                                                                  .center,
                                                              style: TextStyle(
                                                                  fontSize: AppDimens
                                                                      .of(
                                                                      context)
                                                                      .H4,
                                                                  fontFamily: 'SF',
                                                                  color: AppColor
                                                                      .of(
                                                                      context)
                                                                      .white_text
                                                                      .withOpacity(
                                                                      0.6)))),

                                                    ],)
                                                ]))),

                                Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                        AppDimens
                                            .of(context)
                                            .main_margin_small),
                                    child: Text(
                                        "23:20",

                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: AppDimens
                                                .of(context)
                                                .H4,
                                            color: AppColor
                                                .of(context)
                                                .text_grey
                                                .withOpacity(0.6),
                                            fontFamily: 'SF'))),
                              ],)
                          ])
                    ]),),
              Container(
                padding: EdgeInsets.only(top: AppDimens
                    .of(context)
                    .main_margin_midle),
                child:
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .end,
                        children: [

                          Padding(
                              padding: EdgeInsets.only(
                                  right:
                                  AppDimens
                                      .of(context)
                                      .main_margin_mbig,
                                  bottom: AppDimens
                                      .of(context)
                                      .icon_padding),
                              child: Text(regUserBody.first_name,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: AppDimens
                                          .of(context)
                                          .H4,
                                      color: AppColor
                                          .of(context)
                                          .text_grey
                                          .withOpacity(0.6),
                                      fontFamily: 'SF'))),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment
                                  .end,
                              children: [

                                Padding(
                                    padding: EdgeInsets.only(
                                        right:
                                        AppDimens
                                            .of(context)
                                            .main_margin_small),
                                    child: Text("23:29",

                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: AppDimens
                                                .of(context)
                                                .H4,
                                            color: AppColor
                                                .of(context)
                                                .text_grey
                                                .withOpacity(0.6),
                                            fontFamily: 'SF'))),

                                Container(
                                        constraints: BoxConstraints(
                                            maxWidth: 170),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius
                                                .only(
                                                bottomLeft: Radius
                                                    .circular(
                                                    AppDimens
                                                        .of(context)
                                                        .corner_radius),
                                                topLeft: Radius
                                                    .circular(
                                                    AppDimens
                                                        .of(context)
                                                        .corner_radius),
                                                topRight: Radius
                                                    .circular(
                                                    AppDimens
                                                        .of(context)
                                                        .corner_radius)),
                                            color: AppColor
                                                .of(context)
                                                .chat_lite_black
                                        ),
                                        padding: EdgeInsets.all(
                                            AppDimens
                                                .of(context)
                                                .main_margin_small),
                                        child: Padding(
                                            padding: EdgeInsets
                                                .only(
                                                bottom:
                                                AppDimens
                                                    .of(context)
                                                    .icon_padding),
                                            child: Row(
                                                mainAxisSize: MainAxisSize
                                                    .min,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Container(
                                                        // margin: EdgeInsets.only(
                                                        //     top: AppDimens.of(
                                                        //         context)
                                                        //         .main_margin_small),
                                                        child:
                                                        Row(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Container(
                                                                  child: SvgPicture
                                                                      .asset(
                                                                      "assets/images/up_arrow_icon.svg"
                                                                  )),
                                                              Container(
                                                                // margin: EdgeInsets.fromLTRB(
                                                                //     0.0,
                                                                //     AppDimens.of(context)
                                                                //         .main_margin_small,
                                                                //     AppDimens.of(context)
                                                                //         .main_margin_small,
                                                                //     AppDimens.of(context)
                                                                //         .main_margin_small),
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
                                                                              "outgoing_transaction_text"),
                                                                          style: TextStyle(
                                                                              fontSize: AppDimens
                                                                                  .of(
                                                                                  context)
                                                                                  .H4,
                                                                              fontFamily: 'SF',
                                                                              color: AppColor
                                                                                  .of(
                                                                                  context)
                                                                                  .white_text
                                                                                  .withOpacity(
                                                                                  0.6))))),
                                                            ]),),
                                                      Container(
                                                        // margin: EdgeInsets.only(
                                                        //     top: AppDimens.of(
                                                        //         context)
                                                        //         .main_margin_small),
                                                        child:
                                                        Row(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Container(
                                                                  child: SvgPicture
                                                                      .asset(
                                                                      "assets/images/etherium_icon.svg"
                                                                  )),
                                                              Container(
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                      0.0,
                                                                      AppDimens
                                                                          .of(
                                                                          context)
                                                                          .main_margin_small,
                                                                      0,
                                                                      AppDimens
                                                                          .of(
                                                                          context)
                                                                          .main_margin_small),
                                                                  child: Container(
                                                                      padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                          left: AppDimens
                                                                              .of(
                                                                              context)
                                                                              .main_margin_small),
                                                                      child: Text(
                                                                          "0.01 ETH",
                                                                          style: TextStyle(
                                                                              fontSize: AppDimens
                                                                                  .of(
                                                                                  context)
                                                                                  .H1_5,
                                                                              fontFamily: 'AU',
                                                                              color: AppColor
                                                                                  .of(
                                                                                  context)
                                                                                  .white_text)))),
                                                            ]),),
                                                      Container(
                                                          child: Text(
                                                              "4.05 USD",
                                                              style: TextStyle(
                                                                  fontSize: AppDimens
                                                                      .of(
                                                                      context)
                                                                      .H2,
                                                                  fontFamily: 'AU',
                                                                  color: AppColor
                                                                      .of(
                                                                      context)
                                                                      .grey))),
                                                      Container(
                                                        child: FlatButton(
                                                            padding: EdgeInsets
                                                                .fromLTRB(AppDimens
                                                                .of(
                                                                context)
                                                                .icon_padding, 0, AppDimens
                                                                .of(
                                                                context)
                                                                .icon_padding, 0),
                                                            onPressed: () {
                                                              inDeveloping(
                                                                  scaffoldKey);
                                                            },
                                                            child: Container(
                                                                decoration:
                                                                BoxDecoration(
                                                                  border: Border
                                                                      .all(
                                                                      color: AppColor
                                                                          .of(
                                                                          context)
                                                                          .white_text,
                                                                      width: 1),
                                                                  borderRadius: BorderRadius
                                                                      .circular(
                                                                      AppDimens
                                                                          .of(
                                                                          context)
                                                                          .main_margin_small),
                                                                ),
                                                                padding: EdgeInsets
                                                                    .fromLTRB(
                                                                    AppDimens
                                                                        .of(
                                                                        context)
                                                                        .main_margin,
                                                                    AppDimens
                                                                        .of(
                                                                        context)
                                                                        .icon_padding,
                                                                    AppDimens
                                                                        .of(
                                                                        context)
                                                                        .main_margin,
                                                                    AppDimens
                                                                        .of(
                                                                        context)
                                                                        .icon_padding),
                                                                child: Center(
                                                                    child: Text(
                                                                        AppTranslations
                                                                            .of(
                                                                            context)
                                                                            .text(
                                                                            'sign_send_text'),
                                                                        style: TextStyle(
                                                                            fontSize: AppDimens
                                                                                .of(
                                                                                context)
                                                                                .H4,
                                                                            color: AppColor
                                                                                .of(
                                                                                context)
                                                                                .grey))))),),
                                                      Container(
                                                          constraints: BoxConstraints(
                                                              maxWidth: 150),
                                                          alignment: AlignmentDirectional
                                                              .center,
                                                          child: Text(
                                                              AppTranslations
                                                                  .of(context)
                                                                  .text(
                                                                  "decline_text"),
                                                              style: TextStyle(
                                                                  fontSize: AppDimens
                                                                      .of(
                                                                      context)
                                                                      .H4,
                                                                  fontFamily: 'SF',
                                                                  color: AppColor
                                                                      .of(
                                                                      context)
                                                                      .white_text
                                                                      .withOpacity(
                                                                      0.6)))),

                                                    ],)
                                                ]))),

                                Container(
                                    width: AppDimens
                                        .of(
                                        context)
                                        .icon_logo_height,
                                    height: AppDimens
                                        .of(
                                        context)
                                        .icon_logo_height,
                                    decoration:
                                    BoxDecoration(
                                      border: Border.all(
                                          color: AppColor
                                              .of(
                                              context)
                                              .white_text,
                                          width: 1),
                                      borderRadius: BorderRadius
                                          .circular(AppDimens
                                          .of(context)
                                          .main_margin_small),
                                    ),
                                    margin: EdgeInsets.fromLTRB(
                                        AppDimens
                                            .of(context)
                                            .main_margin_small,
                                        0.0,
                                        AppDimens
                                            .of(context)
                                            .main_margin_midle,
                                        0.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius
                                            .circular(AppDimens
                                            .of(
                                            context)
                                            .main_margin_midle),
                                        child: photo != "" &&
                                            photo != null
                                            ? Image.network(
                                          photo,
                                          width:
                                          AppDimens
                                              .of(context)
                                              .main_margin,
                                          height:
                                          AppDimens
                                              .of(context)
                                              .main_margin,
                                        )
                                            : Stack(
                                          alignment:
                                          AlignmentDirectional.center,
                                          children: [
                                            Icon(
                                              Icons.person,
                                              color:
                                              AppColor
                                                  .of(context)
                                                  .white_text,
                                              size:
                                              AppDimens
                                                  .of(context)
                                                  .H0,
                                            )
                                          ],
                                        ))),
                              ]),
                        ],)
                    ]),)
            ])
    );

    var send_message = Padding(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom),
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
                .main_margin_small),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            GestureDetector(
                onTap: () {
                  _sendMessage();
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(
                        0, AppDimens
                        .of(context)
                        .main_margin_small, 0, 0.0),
                    padding:
                    EdgeInsets.fromLTRB(
                        0, 0, 0, 0.0),
                    child: SvgPicture.asset(
                        "assets/images/add_file_icon.svg",
                        color: AppColor
                            .of(context)
                            .grey,
                        width: AppDimens
                            .of(context)
                            .main_margin,
                        height: AppDimens
                            .of(context)
                            .main_margin))),

            GestureDetector(
                onTap: () {
                  _sendMessage();
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(
                        0, AppDimens
                        .of(context)
                        .main_margin_small, 0, 0.0),
                    padding:
                    EdgeInsets.all(AppDimens
                        .of(context)
                        .main_margin_small),
                    child: SvgPicture.asset(
                        "assets/images/add_photo_icon.svg",
                        color: AppColor
                            .of(context)
                            .grey,
                        width: AppDimens
                            .of(context)
                            .main_margin,
                        height: AppDimens
                            .of(context)
                            .main_margin))),
            Expanded(child: Container(
                padding: EdgeInsets.fromLTRB(
                    AppDimens
                        .of(context)
                        .main_margin_small,
                    0,
                    AppDimens
                        .of(context)
                        .main_margin_small,
                    0.0),
                decoration: BoxDecoration(
                  color: AppColor
                      .of(context)
                      .grey_field_bg
                      .withOpacity(0.4),
                  borderRadius: BorderRadius.circular(
                      AppDimens
                          .of(context)
                          .corner_radius),
                ),
                margin: EdgeInsets.fromLTRB(
                    0,
                    AppDimens
                        .of(context)
                        .main_margin_small,
                    AppDimens
                        .of(context)
                        .main_margin_small,
                    0.0),
                child: Form(
                    child: TextFormField(
                      controller: _controller,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.all(0.0),
                          hintText: AppTranslations.of(context)
                              .text("message_text"),
                          hintStyle: TextStyle(
                            color: AppColor
                                .of(context)
                                .white_text
                                .withOpacity(0.6),
                            fontFamily: "SF",
                          )),
                      textCapitalization: TextCapitalization.sentences,
                      onChanged: (val) {
                        message = val;
                      },
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                        color: AppColor
                            .of(context)
                            .white_text
                            .withOpacity(0.6),
                        fontFamily: "SF",
                      ),
                    )))),
            GestureDetector(
                onTap: () {
                  _sendMessage();
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(
                        0, AppDimens
                        .of(context)
                        .main_margin_small, 0, 0.0),
                    padding:
                    EdgeInsets.fromLTRB(
                        0, 0, 0, 0.0),
                    child: SvgPicture.asset(
                        "assets/images/voice_icon.svg",
                        color: AppColor
                            .of(context)
                            .grey,
                        width: AppDimens
                            .of(context)
                            .main_margin,
                        height: AppDimens
                            .of(context)
                            .main_margin))),
            GestureDetector(
                onTap: () {
                  _sendMessage();
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(
                        AppDimens
                            .of(context)
                            .main_margin_small, AppDimens
                        .of(context)
                        .main_margin_small, 0, 0.0),
                    padding:
                    EdgeInsets.all(AppDimens
                        .of(context)
                        .main_margin_small),
                    decoration: BoxDecoration(
                      color: AppColor
                          .of(context)
                          .main_color,
                      borderRadius: BorderRadius.circular(
                          AppDimens
                              .of(context)
                              .btn_corner_radius),
                    ),
                    child: SvgPicture.asset(
                        "assets/images/send_message_icon.svg",
                        color: AppColor
                            .of(context)
                            .black_text,
                        width: AppDimens
                            .of(context)
                            .main_margin_midle,
                        height: AppDimens
                            .of(context)
                            .main_margin_midle)))
          ],
        )));
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.more_horiz, color: AppColor
                    .of(context)
                    .white_text),
                onPressed: () => _settingModalBottomSheet(context)),
          ],
          backgroundColor: Colors.transparent,
          titleSpacing: 0,
          automaticallyImplyLeading: false,
          // Don't show the leading button
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  padding: EdgeInsets.only(left: 0),
                  child: Text(AppTranslations.of(context).text("back_text"),
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

                top_headert,
                Container()
              ])),
      backgroundColor: AppColor
          .of(context)
          .lite_black,
      bottomNavigationBar: send_message,
      key: scaffoldKey,
      body: Column(
        children: <Widget>[
          Expanded(child: chatList),
        ],
      ),
    );
  }

  void _sendMessage() {
    _controller.clear();
    inDeveloping(scaffoldKey);
  }

  _getBooksList(BuildContext context) async {
    setState(() {
      for (int i = 0; i < 5; i++) {
        arrayOfProducts.add(ChatMessageBody(message: "hi " + i.toString(),
            first_name: 'user' + i.toString(),
            chat_id: chat_id,
            last_name: "",
            user_key: i.toString(),
            date: "2020-10-19",
            time: "16:" + (20 + i).toString(),
            photo: null));
      }
    });
    arrayOfProducts = arrayOfProducts.reversed;
  }


  @override
  void dispose() {
    super.dispose();
  }


  void _settingModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            decoration: BoxDecoration(
                color: AppColor
                    .of(context)
                    .lite_black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppDimens
                      .of(context)
                      .main_margin),
                  topRight: Radius.circular(AppDimens
                      .of(context)
                      .main_margin),
                )),
            child: Wrap(
              children: <Widget>[
                Container(
                    margin:
                    EdgeInsets.all(AppDimens
                        .of(context)
                        .main_margin_small),
                    child: Center(
                        child: Container(
                            height: 2,
                            width: AppDimens
                                .of(context)
                                .main_margin,
                            decoration: BoxDecoration(
                              color: AppColor
                                  .of(context)
                                  .white_text,
                              borderRadius: BorderRadius.circular(
                                  AppDimens
                                      .of(context)
                                      .corner_radius),
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
                                                    "assets/images/log_out_2_icon.svg",
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
                                                                "share_chat_text"),
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
                                              child: Icon(
                                                Icons.mark_email_read_outlined,
                                                color: AppColor
                                                    .of(context)
                                                    .main_text_color,),),
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
                                                                "mark_read_text"),
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
                                              child: SvgPicture.asset(
                                                "assets/images/clear_icon.svg",
                                                color: AppColor
                                                    .of(context)
                                                    .main_text_color,),),
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
                                                                "clear_history_text"),
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
                                              child: SvgPicture.asset(
                                                "assets/images/fetch_icon.svg",
                                                color: AppColor
                                                    .of(context)
                                                    .main_text_color,),),
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
                                                                "fetch_hours_text"),
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
                      _onWillPop();
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
                                              child: SvgPicture.asset(
                                                "assets/images/garbage_icon.svg",
                                                color: AppColor
                                                    .of(context)
                                                    .red,),),
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
                                                                "delete_chat_text"),
                                                            textAlign: TextAlign
                                                                .start,
                                                            style: TextStyle(
                                                                fontSize: AppDimens
                                                                    .of(context)
                                                                    .H1_5,
                                                                fontFamily: 'SF',
                                                                color: AppColor
                                                                    .of(context)
                                                                    .red)))),

                                              ],)
                                          ]),
                                    ]))))),
              ],
            ),
          );
        });
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
                          AppTranslations.of(context).text('delete_chat_text1'),
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
