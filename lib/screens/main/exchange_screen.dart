import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';

class ExchangeScreen extends StatefulWidget {

  const ExchangeScreen({Key key,})
      : super(key: key);

  @override
  _ExchangeScreenState createState() =>
      _ExchangeScreenState();
}

class _ExchangeScreenState extends State<ExchangeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<int> items;
  _ExchangeScreenState(
      {Key key,});


  @override
  void initState() {
    super.initState();
    getItemsList();
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
//    var listBanks = Container(
//        margin: EdgeInsets.all(0.0),
//        child: FutureBuilder<List<int>>(
//            future: items,
//            builder: (context, snapshot) {
//              if (snapshot.hasData) {
//                return snapshot.data.length != 0
//                    ?
//                  ListView.builder(
//                      physics: ScrollPhysics(),
//                      shrinkWrap: true,
//                      padding: EdgeInsets.fromLTRB(
//                          0.0,
//                          AppDimens.of(context).main_margin_small,
//                          0.0,
//                          AppDimens.of(context).main_margin_small),
//                      itemCount: snapshot.data.length,
//                      itemBuilder: (BuildContext context, int index) {
//
//                      })
//                    : Container(
//                  margin: EdgeInsets.fromLTRB(
//                      AppDimens.of(context).main_margin,
//                      AppDimens.of(context).main_margin_small,
//                      AppDimens.of(context).main_margin,
//                      AppDimens.of(context).main_margin_small),
//                  child: Center(
//                    child: Text(
//                        AppTranslations.of(context)
//                            .text("no_tickets_text"),
//                        style: TextStyle(
//                            fontSize: AppDimens.of(context).H2,
//                            fontFamily: 'SF',
//                            color: AppColor.of(context).white_text)),
//                  ),
//                );
//              } else if (snapshot.hasError) {
//                return Center(
//                    child: Text(
//                      AppTranslations.of(context).text('server_null_error'),
//                      style: TextStyle(color: AppColor.of(context).white_text),
//                    ));
//              } else if (snapshot.data == null) {
//                Container(
//                  margin: EdgeInsets.fromLTRB(
//                      AppDimens.of(context).main_margin,
//                      AppDimens.of(context).main_margin_small,
//                      AppDimens.of(context).main_margin,
//                      AppDimens.of(context).main_margin_small),
//                  child: Center(
//                    child: Text(
//                        AppTranslations.of(context).text("no_tickets_text"),
//                        style: TextStyle(
//                            fontSize: AppDimens.of(context).H2,
//                            fontFamily: 'SF',
//                            color: AppColor.of(context).white_text)),
//                  ),
//                );
//              }
//              // By default, show a loading spinner.
//              return Center(child: CircularProgressIndicator());
//            }));
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.transparent,
        body: Column(children: [

    GestureDetector(
    //You need to make my child interactive
    onTap: () {

    inDeveloping(scaffoldKey);
    },
    child: Container(
            margin: EdgeInsets.fromLTRB(
                AppDimens.of(context).main_margin,
                AppDimens.of(context).main_margin,
                AppDimens.of(context).main_margin,
                0.0),
            child: Center(
                child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset("assets/images/usa_icon.svg",),
                        onPressed: () {},
                      ),
                      Text(
                          AppTranslations.of(context)
                              .text("usd_text"),
                          style: TextStyle(
                              fontSize: AppDimens.of(context).H2,
                              fontFamily: 'SF',
                              color:
                              AppColor.of(context).white_text)),
                    ]))),
          ),
//          ListView(
//            // shrinkWrap: true,
//              children: <Widget>[
//                ListView.builder(
//                    physics: ScrollPhysics(),
//                    shrinkWrap: true,
//                    itemCount: items.length,
//                    itemBuilder: (BuildContext ctxt, int index) {
//                      return Padding(
//                          padding: EdgeInsets.only(
//                              bottom:
//                              AppDimens.of(context).main_margin),
//                          child: GestureDetector(
//                            //You need to make my child interactive
//                              onTap: () {
//
//                              },
//                              child: Container(
//                                  margin: EdgeInsets.fromLTRB(
//                                      AppDimens.of(context)
//                                          .main_margin_small,
//                                      AppDimens.of(context)
//                                          .main_margin_small,
//                                      0.0,
//                                      AppDimens.of(context)
//                                          .main_margin_small),
//                                  child: Center(
//                                      child: Container(
//                                          height: 100,
//                                          margin: EdgeInsets.only(
//                                              top: AppDimens.of(
//                                                  context)
//                                                  .main_margin_small),
//                                          child: Row(
//                                              crossAxisAlignment:
//                                              CrossAxisAlignment
//                                                  .center,
//                                              mainAxisAlignment:
//                                              MainAxisAlignment
//                                                  .spaceBetween,
//                                              children: [
//                                                Row(
//                                                    crossAxisAlignment:
//                                                    CrossAxisAlignment
//                                                        .center,
//                                                    mainAxisAlignment:
//                                                    MainAxisAlignment
//                                                        .start,
//                                                    children: [
//                                                      Container(
//                                                          child: SvgPicture
//                                                              .asset(
//                                                            (items[index] & 1) == 0
//                                                                ? "assets/images/bitcoin_icon.svg"
//                                                                : "assets/images/etherium_icon.svg",
//                                                          )),
//                                  Container(
//                                                          margin: EdgeInsets.fromLTRB(
//                                                              0.0,
//                                                              AppDimens.of(context)
//                                                                  .main_margin_small,
//                                                              AppDimens.of(context)
//                                                                  .main_margin_small,
//                                                              AppDimens.of(context)
//                                                                  .main_margin_small),
//                                                          child: Container(
//                                                              padding:
//                                                              EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
//                                                              child: Text(AppTranslations.of(context)
//                                                                  .text("bitcoin_text"), style: TextStyle(fontSize: AppDimens.of(context).H1, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).white_text)))),
//                                                    ]),
//                          Container(
//                                                    margin: EdgeInsets.fromLTRB(
//                                                        0.0,
//                                                        AppDimens.of(context)
//                                                            .main_margin_small,
//                                                        AppDimens.of(context)
//                                                            .main_margin_small,
//                                                        AppDimens.of(context)
//                                                            .main_margin_small),
//                                                    child: Container(
//                                                        padding:
//                                                        EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
//                                                        child: Text(AppTranslations.of(context)
//                                                            .text("\$" + items[index].toString() ), style: TextStyle(fontSize: AppDimens.of(context).H1, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).white_text)))),
//                                              ])))))
//                      );
//                    }),
//                Container(
//                  height: AppDimens.of(context).main_margin_vbig,
//                )
//              ])
          GestureDetector(
            //You need to make my child interactive
              onTap: () {

                inDeveloping(scaffoldKey);
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
                                          child: SvgPicture
                                              .asset("assets/images/etherium_icon.svg",
                                          )),
                                      Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0.0,
                                              AppDimens.of(context)
                                                  .main_margin_small,
                                              AppDimens.of(context)
                                                  .main_margin_small,
                                              AppDimens.of(context)
                                                  .main_margin_small),
                                          child: Container(
                                              padding:
                                              EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                              child: Text(AppTranslations.of(context)
                                                  .text("ether_text"), style: TextStyle(fontSize: AppDimens.of(context).H2, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).white_text)))),
                                    ]),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0.0,
                                        AppDimens.of(context)
                                            .main_margin_small,
                                        AppDimens.of(context)
                                            .main_margin_small,
                                        AppDimens.of(context)
                                            .main_margin_small),
                                    child: Container(
                                        padding:
                                        EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                        child: Text("\$ 12,434.00", style: TextStyle(fontSize: AppDimens.of(context).H2, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).white_text)))),
                              ]))))),
          GestureDetector(
            //You need to make my child interactive
              onTap: () {

                inDeveloping(scaffoldKey);
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
                                          child: SvgPicture
                                              .asset("assets/images/bitcoin_icon.svg"
                                          )),
                                      Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0.0,
                                              AppDimens.of(context)
                                                  .main_margin_small,
                                              AppDimens.of(context)
                                                  .main_margin_small,
                                              AppDimens.of(context)
                                                  .main_margin_small),
                                          child: Container(
                                              padding:
                                              EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                              child: Text(AppTranslations.of(context)
                                                  .text("bitcoin_text"), style: TextStyle(fontSize: AppDimens.of(context).H2, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).white_text)))),
                                    ]),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0.0,
                                        AppDimens.of(context)
                                            .main_margin_small,
                                        AppDimens.of(context)
                                            .main_margin_small,
                                        AppDimens.of(context)
                                            .main_margin_small),
                                    child: Container(
                                        padding:
                                        EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                        child: Text("\$ 3,334.00", style: TextStyle(fontSize: AppDimens.of(context).H2, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).white_text)))),
                              ]))))),
          GestureDetector(
            //You need to make my child interactive
              onTap: () {

                inDeveloping(scaffoldKey);
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
                                          child: SvgPicture
                                              .asset("assets/images/etherium_icon.svg",
                                          )),
                                      Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0.0,
                                              AppDimens.of(context)
                                                  .main_margin_small,
                                              AppDimens.of(context)
                                                  .main_margin_small,
                                              AppDimens.of(context)
                                                  .main_margin_small),
                                          child: Container(
                                              padding:
                                              EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                              child: Text(AppTranslations.of(context)
                                                  .text("ether_text"), style: TextStyle(fontSize: AppDimens.of(context).H2, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).white_text)))),
                                    ]),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0.0,
                                        AppDimens.of(context)
                                            .main_margin_small,
                                        AppDimens.of(context)
                                            .main_margin_small,
                                        AppDimens.of(context)
                                            .main_margin_small),
                                    child: Container(
                                        padding:
                                        EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                        child: Text("\$ 97.00" , style: TextStyle(fontSize: AppDimens.of(context).H2, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).white_text)))),
                              ])))))
        ],));
  }

  getItemsList() async {
    List<int> list= [];
    for (int i = 0; i < 20; i++){
      list.add(Random().nextInt(145855));
    }
    items = list;
  }
}
