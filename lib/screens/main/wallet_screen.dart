import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/screens/wallet/add_account_screen.dart';
import 'package:shlen/screens/wallet/manage_assetts.dart';
import 'package:shlen/screens/wallet/set_currency_screen.dart';
import 'package:shlen/screens/wallet/single_account.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({
    Key key,
  }) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  ScrollController _scrollController = ScrollController();

  _WalletScreenState({
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
    var top_box =  MediaQuery.of(context).size.height < 600 ? Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height - 200,
        ),
        child:ListView(
          controller: _scrollController,
          children: [
        Container(
          margin: EdgeInsets.fromLTRB(
              AppDimens.of(context).main_margin,
              0,
              AppDimens.of(context).main_margin,
              0),
          child: Row(
            children: [
              Text("10" + " ",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: AppDimens.of(context).H01_5,
                      color: AppColor.of(context).white_text,
                      fontFamily: 'AU')),
              Text("USD",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: AppDimens.of(context).H01_5,
                      color: AppColor.of(context).white_text.withOpacity(0.6),
                      fontFamily: 'AU'))
            ],
          ),
        ),
        Container(
          alignment: AlignmentDirectional.centerStart,
            margin: EdgeInsets.fromLTRB(
                AppDimens.of(context).main_margin,
                0,
                AppDimens.of(context).main_margin,
                AppDimens.of(context).main_margin_small),
            child: Text(AppTranslations.of(context).text("total_cost_text"),
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: AppDimens.of(context).H0,
                    color: AppColor.of(context).grey,
                    fontFamily: 'AU'))),
        Container(
            height: 151.0,
            margin: EdgeInsets.fromLTRB(
                0,
                AppDimens.of(context).main_margin_midle,
                0,
                AppDimens.of(context).main_margin_small),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                GestureDetector(
                    //You need to make my child interactive
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SingleAccountScreen()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: AppDimens.of(context).main_margin_midle),
                      padding: EdgeInsets.all(
                          AppDimens.of(context).main_margin_small),
                      decoration: BoxDecoration(
                        color: AppColor.of(context).white_text,
                        borderRadius: BorderRadius.circular(
                            AppDimens.of(context).main_margin),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(
                                  AppDimens.of(context).main_margin,
                                  0,
                                  AppDimens.of(context).main_margin,
                                  AppDimens.of(context).main_margin_midle),
                              child: SvgPicture.asset(
                                'assets/images/upload_icon.svg',
                              )),
                          Container(
                            margin: EdgeInsets.only(
                                bottom:
                                    AppDimens.of(context).main_margin_midle),
                            child: Row(
                              children: [
                                Text("10" + " ",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: AppDimens.of(context).H0,
                                        color: AppColor.of(context).black_text,
                                        fontFamily: 'AU')),
                                Text("USD",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: AppDimens.of(context).H0,
                                        color: AppColor.of(context)
                                            .black_text
                                            .withOpacity(0.6),
                                        fontFamily: 'AU'))
                              ],
                            ),
                          ),
                          Text(
                              AppTranslations.of(context)
                                  .text("status_account_text"),
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: AppDimens.of(context).H2,
                                  fontFamily: 'AU',
                                  color: AppColor.of(context).black_text)),
                          Text("0x154c24...9v9",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: AppDimens.of(context).H2,
                                  fontFamily: 'AU',
                                  color: AppColor.of(context)
                                      .black_text
                                      .withOpacity(0.6))),
                        ],
                      ),
                    )),
                GestureDetector(
                    //You need to make my child interactive
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddAccountScreen()));
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          AppDimens.of(context).main_margin_midle,
                          AppDimens.of(context).main_margin_midle,
                          AppDimens.of(context).main_margin,
                          AppDimens.of(context).main_margin_small),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: AppDimens.of(context).icon_logo_height,
                                height: AppDimens.of(context).icon_logo_height,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColor.of(context).white_text,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(
                                      AppDimens.of(context).main_margin_small),
                                ),
                                margin: EdgeInsets.fromLTRB(
                                    0.0,
                                    0.0,
                                    AppDimens.of(context).main_margin_small,
                                    0.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        AppDimens.of(context)
                                            .main_margin_midle),
                                    child: Icon(
                                      Icons.add,
                                      color: AppColor.of(context).white_text,
                                      size: AppDimens.of(context).H0,
                                    ))),
                            Container(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                               Text(MediaQuery.of(context).size.width < 359 ?
                                          AppTranslations.of(context)
                                              .text("add_account_text") : AppTranslations.of(context)
                                   .text("add_account_text1"),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize:
                                                  AppDimens.of(context).H3,
                                              fontFamily: 'AU',
                                              color: AppColor.of(context)
                                                  .white_text)),
                                ])),
                          ]),
                    ))
              ],
            )),
        Container(
            padding:
                EdgeInsets.only(top: AppDimens.of(context).main_margin_small),
            margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_small, 0, 0),
            child: Center(
                child: Container(
                    margin: EdgeInsets.only(
                        top: AppDimens.of(context).main_margin_small),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width:
                                        AppDimens.of(context).icon_plus_height,
                                    height:
                                        AppDimens.of(context).icon_plus_height,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color:
                                              AppColor.of(context).dolar_color,
                                          width: 1),
                                      borderRadius: BorderRadius.circular(
                                          AppDimens.of(context).main_margin),
                                    ),
                                    margin: EdgeInsets.fromLTRB(
                                        0.0,
                                        0.0,
                                        AppDimens.of(context).main_margin_small,
                                        0.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            AppDimens.of(context).main_margin),
                                        child: Stack(
                                          alignment:
                                              AlignmentDirectional.center,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/images/bitcoin_round_icon.svg',
                                              color: AppColor.of(context)
                                                  .dolar_color,
                                              width: AppDimens.of(context).H0,
                                              height: AppDimens.of(context).H0,
                                            )
                                          ],
                                        ))),
                                Container(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              bottom: AppDimens.of(context)
                                                  .main_margin_small),
                                          child: Row(
                                            children: [
                                              Text("10" + " ",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontSize:
                                                          AppDimens.of(context)
                                                              .H1_5,
                                                      fontFamily: 'AU',
                                                      color:
                                                          AppColor.of(context)
                                                              .white_text)),
                                              Text("USD",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontSize:
                                                          AppDimens.of(context)
                                                              .H1_5,
                                                      fontFamily: 'AU',
                                                      color: AppColor.of(
                                                              context)
                                                          .white_text
                                                          .withOpacity(0.6)))
                                            ],
                                          )),
                                      Text(
                                          "0.00" +
                                              " " +
                                              AppTranslations.of(context)
                                                  .text("usd_text"),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize:
                                                  AppDimens.of(context).H1_5,
                                              fontFamily: 'AU',
                                              color: AppColor.of(context)
                                                  .white_text
                                                  .withOpacity(0.6))),
                                    ])),
                              ]),
                        ])))),
        Container(
            margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_small, 0, 0),
            child: Center(
                child: Container(
                    margin: EdgeInsets.only(
                        top: AppDimens.of(context).main_margin_small),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width:
                                        AppDimens.of(context).icon_plus_height,
                                    height:
                                        AppDimens.of(context).icon_plus_height,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColor.of(context)
                                              .bitcoin_color,
                                          width: 1),
                                      borderRadius: BorderRadius.circular(
                                          AppDimens.of(context).main_margin),
                                    ),
                                    margin: EdgeInsets.fromLTRB(
                                        0.0,
                                        0.0,
                                        AppDimens.of(context).main_margin_small,
                                        0.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            AppDimens.of(context).main_margin),
                                        child: Stack(
                                          alignment:
                                              AlignmentDirectional.center,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/images/usd_round_icon.svg',
                                              color: AppColor.of(context)
                                                  .bitcoin_color,
                                              width: AppDimens.of(context).H0,
                                              height: AppDimens.of(context).H0,
                                            )
                                          ],
                                        ))),
                                Container(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              bottom: AppDimens.of(context)
                                                  .main_margin_small),
                                          child: Row(
                                            children: [
                                              Text("10" + " ",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontSize:
                                                          AppDimens.of(context)
                                                              .H1_5,
                                                      fontFamily: 'AU',
                                                      color:
                                                          AppColor.of(context)
                                                              .white_text)),
                                              Text("BTS",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontSize:
                                                          AppDimens.of(context)
                                                              .H1_5,
                                                      fontFamily: 'AU',
                                                      color: AppColor.of(
                                                              context)
                                                          .white_text
                                                          .withOpacity(0.6)))
                                            ],
                                          )),
                                      Text(
                                          "0.00" +
                                              " " +
                                              AppTranslations.of(context)
                                                  .text("usd_text"),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize:
                                                  AppDimens.of(context).H1_5,
                                              fontFamily: 'AU',
                                              color: AppColor.of(context)
                                                  .white_text
                                                  .withOpacity(0.6))),
                                    ])),
                              ]),
                        ]))))
      ],
        )) : Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(
              AppDimens.of(context).main_margin,
              AppDimens.of(context).main_margin_big,
              AppDimens.of(context).main_margin,
              0),
          child: Row(
            children: [
              Text("10" + " ",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: AppDimens.of(context).H01_5,
                      color: AppColor.of(context).white_text,
                      fontFamily: 'AU')),
              Text("USD",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: AppDimens.of(context).H01_5,
                      color: AppColor.of(context).white_text.withOpacity(0.6),
                      fontFamily: 'AU'))
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.fromLTRB(
                AppDimens.of(context).main_margin,
                0,
                AppDimens.of(context).main_margin,
                AppDimens.of(context).main_margin_small),
            child: Text(AppTranslations.of(context).text("total_cost_text"),
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: AppDimens.of(context).H0,
                    color: AppColor.of(context).grey,
                    fontFamily: 'AU'))),
        Container(
            height: 151.0,
            margin: EdgeInsets.fromLTRB(
                0,
                AppDimens.of(context).main_margin_midle,
                0,
                AppDimens.of(context).main_margin_small),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                GestureDetector(
                  //You need to make my child interactive
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SingleAccountScreen()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: AppDimens.of(context).main_margin_midle),
                      padding: EdgeInsets.all(
                          AppDimens.of(context).main_margin_small),
                      decoration: BoxDecoration(
                        color: AppColor.of(context).white_text,
                        borderRadius: BorderRadius.circular(
                            AppDimens.of(context).main_margin),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(
                                  AppDimens.of(context).main_margin,
                                  0,
                                  AppDimens.of(context).main_margin,
                                  AppDimens.of(context).main_margin_midle),
                              child: SvgPicture.asset(
                                'assets/images/upload_icon.svg',
                              )),
                          Container(
                            margin: EdgeInsets.only(
                                bottom:
                                AppDimens.of(context).main_margin_midle),
                            child: Row(
                              children: [
                                Text("10" + " ",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: AppDimens.of(context).H0,
                                        color: AppColor.of(context).black_text,
                                        fontFamily: 'AU')),
                                Text("USD",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: AppDimens.of(context).H0,
                                        color: AppColor.of(context)
                                            .black_text
                                            .withOpacity(0.6),
                                        fontFamily: 'AU'))
                              ],
                            ),
                          ),
                          Text(
                              AppTranslations.of(context)
                                  .text("status_account_text"),
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: AppDimens.of(context).H2,
                                  fontFamily: 'AU',
                                  color: AppColor.of(context).black_text)),
                          Text("0x154c24...9v9",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: AppDimens.of(context).H2,
                                  fontFamily: 'AU',
                                  color: AppColor.of(context)
                                      .black_text
                                      .withOpacity(0.6))),
                        ],
                      ),
                    )),
                GestureDetector(
                  //You need to make my child interactive
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddAccountScreen()));
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          AppDimens.of(context).main_margin,
                          AppDimens.of(context).main_margin_midle,
                          AppDimens.of(context).main_margin,
                          AppDimens.of(context).main_margin_small),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: AppDimens.of(context).icon_logo_height,
                                height: AppDimens.of(context).icon_logo_height,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColor.of(context).white_text,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(
                                      AppDimens.of(context).main_margin_small),
                                ),
                                margin: EdgeInsets.fromLTRB(
                                    0.0,
                                    0.0,
                                    AppDimens.of(context).main_margin_small,
                                    0.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        AppDimens.of(context)
                                            .main_margin_midle),
                                    child: Icon(
                                      Icons.add,
                                      color: AppColor.of(context).white_text,
                                      size: AppDimens.of(context).H0,
                                    ))),
                            Container(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          AppTranslations.of(context)
                                              .text("add_account_text"),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize:
                                              AppDimens.of(context).H3,
                                              fontFamily: 'AU',
                                              color: AppColor.of(context)
                                                  .white_text)),
                                    ])),
                          ]),
                    ))
              ],
            )),
        Container(
            padding:
            EdgeInsets.only(top: AppDimens.of(context).main_margin_small),
            margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_small, 0, 0),
            child: Center(
                child: Container(
                    margin: EdgeInsets.only(
                        top: AppDimens.of(context).main_margin_small),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width:
                                    AppDimens.of(context).icon_plus_height,
                                    height:
                                    AppDimens.of(context).icon_plus_height,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color:
                                          AppColor.of(context).dolar_color,
                                          width: 1),
                                      borderRadius: BorderRadius.circular(
                                          AppDimens.of(context).main_margin),
                                    ),
                                    margin: EdgeInsets.fromLTRB(
                                        0.0,
                                        0.0,
                                        AppDimens.of(context).main_margin_small,
                                        0.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            AppDimens.of(context).main_margin),
                                        child: Stack(
                                          alignment:
                                          AlignmentDirectional.center,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/images/bitcoin_round_icon.svg',
                                              color: AppColor.of(context)
                                                  .dolar_color,
                                              width: AppDimens.of(context).H0,
                                              height: AppDimens.of(context).H0,
                                            )
                                          ],
                                        ))),
                                Container(
                                    child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  bottom: AppDimens.of(context)
                                                      .main_margin_small),
                                              child: Row(
                                                children: [
                                                  Text("10" + " ",
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                          fontSize:
                                                          AppDimens.of(context)
                                                              .H1_5,
                                                          fontFamily: 'AU',
                                                          color:
                                                          AppColor.of(context)
                                                              .white_text)),
                                                  Text("USD",
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                          fontSize:
                                                          AppDimens.of(context)
                                                              .H1_5,
                                                          fontFamily: 'AU',
                                                          color: AppColor.of(
                                                              context)
                                                              .white_text
                                                              .withOpacity(0.6)))
                                                ],
                                              )),
                                          Text(
                                              "0.00" +
                                                  " " +
                                                  AppTranslations.of(context)
                                                      .text("usd_text"),
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize:
                                                  AppDimens.of(context).H1_5,
                                                  fontFamily: 'AU',
                                                  color: AppColor.of(context)
                                                      .white_text
                                                      .withOpacity(0.6))),
                                        ])),
                              ]),
                        ])))),
        Container(
            margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_small, 0, 0),
            child: Center(
                child: Container(
                    margin: EdgeInsets.only(
                        top: AppDimens.of(context).main_margin_small),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width:
                                    AppDimens.of(context).icon_plus_height,
                                    height:
                                    AppDimens.of(context).icon_plus_height,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColor.of(context)
                                              .bitcoin_color,
                                          width: 1),
                                      borderRadius: BorderRadius.circular(
                                          AppDimens.of(context).main_margin),
                                    ),
                                    margin: EdgeInsets.fromLTRB(
                                        0.0,
                                        0.0,
                                        AppDimens.of(context).main_margin_small,
                                        0.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            AppDimens.of(context).main_margin),
                                        child: Stack(
                                          alignment:
                                          AlignmentDirectional.center,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/images/usd_round_icon.svg',
                                              color: AppColor.of(context)
                                                  .bitcoin_color,
                                              width: AppDimens.of(context).H0,
                                              height: AppDimens.of(context).H0,
                                            )
                                          ],
                                        ))),
                                Container(
                                    child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  bottom: AppDimens.of(context)
                                                      .main_margin_small),
                                              child: Row(
                                                children: [
                                                  Text("10" + " ",
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                          fontSize:
                                                          AppDimens.of(context)
                                                              .H1_5,
                                                          fontFamily: 'AU',
                                                          color:
                                                          AppColor.of(context)
                                                              .white_text)),
                                                  Text("BTS",
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                          fontSize:
                                                          AppDimens.of(context)
                                                              .H1_5,
                                                          fontFamily: 'AU',
                                                          color: AppColor.of(
                                                              context)
                                                              .white_text
                                                              .withOpacity(0.6)))
                                                ],
                                              )),
                                          Text(
                                              "0.00" +
                                                  " " +
                                                  AppTranslations.of(context)
                                                      .text("usd_text"),
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize:
                                                  AppDimens.of(context).H1_5,
                                                  fontFamily: 'AU',
                                                  color: AppColor.of(context)
                                                      .white_text
                                                      .withOpacity(0.6))),
                                        ])),
                              ]),
                        ]))))
      ],
    );
    return MediaQuery.of(context).size.height < 600 ? Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: IconButton(
                icon: Icon(Icons.more_horiz, color: Colors.transparent),
                onPressed: () {},
              ),
              actions: <Widget>[
                IconButton(
                    icon:
                        SvgPicture.asset('assets/images/wallet_menu_icon.svg'),
                    onPressed: () {
                      inDeveloping(scaffoldKey);
                    }),
                IconButton(
                    icon: Icon(Icons.more_horiz,
                        color: AppColor.of(context).grey),
                    onPressed: () => _settingModalBottomSheet(context)),
              ]),
          key: scaffoldKey,
          backgroundColor: Colors.transparent,
          body:  Builder(
            builder: (context) =>
            Container(
            constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height - 61,
            ),
            child:ListView(
              controller: _scrollController,
           children: [top_box,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child:GestureDetector(
                            onTap: () {
                              inDeveloping(scaffoldKey);
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
                                    AppDimens.of(context).main_margin,
                                    AppDimens.of(context).main_margin_small,
                                    AppDimens.of(context).main_margin_small),
                                child: SvgPicture.asset(
                                    "assets/images/plus_btn_icon.svg"))))
                  ],
                )
                  ],)),

    )) : Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: IconButton(
                icon: Icon(Icons.more_horiz, color: Colors.transparent),
                onPressed: () {},
              ),
              actions: <Widget>[
                IconButton(
                    icon:
                    SvgPicture.asset('assets/images/wallet_menu_icon.svg'),
                    onPressed: () {
                      inDeveloping(scaffoldKey);
                    }),
                IconButton(
                    icon: Icon(Icons.more_horiz,
                        color: AppColor.of(context).grey),
                    onPressed: () => _settingModalBottomSheet(context)),
              ]),
          key: scaffoldKey,
          backgroundColor: Colors.transparent,
          body: Stack(alignment: AlignmentDirectional.centerStart, children: [
            top_box,
            Column(
              children: [
                Expanded(
                  child: Container(),
                ),
                GestureDetector(
                    onTap: () {
                      inDeveloping(scaffoldKey);
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

  void _settingModalBottomSheet(context) {
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ManageAssetsScreen()));
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
                                                    "assets/images/manage_icon.svg",
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
                                                                "manage_assets_text"),
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
                                                child: SvgPicture
                                                    .asset(
                                                    "assets/images/scan_token_icon.svg",
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
                                                                "scan_tokens_text"),
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
                              builder: (context) => SetCurrencyScreen()));
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
                                                    "assets/images/set_currency_icon.svg",
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
                                                                "set_currency_text"),
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
                                                    "assets/images/signing_phrase_icon.svg",
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
                                                                "signing_phrase_text"),
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
