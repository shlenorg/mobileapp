import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';

class SingleAccountScreen extends StatefulWidget {
  const SingleAccountScreen({Key key}) : super(key: key);

  @override
  _SingleAccountScreenState createState() => _SingleAccountScreenState();
}

class _SingleAccountScreenState extends State<SingleAccountScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TabController _controller;

  _SingleAccountScreenState();

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child:
            Scaffold(
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                elevation: 0.0,
                actions: <Widget>[
                  IconButton(
                      icon: Icon(Icons.more_horiz,
                          color: AppColor.of(context).grey),
                      onPressed: () => inDeveloping(scaffoldKey)),
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
                          child: Text(AppTranslations.of(context).text("back_text"),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: AppDimens.of(context).H3,
                                  color: AppColor.of(context).white_text,
                                  fontFamily: 'AU')),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ])),
              backgroundColor: Colors.transparent,
              key: scaffoldKey,
              body: Builder(
                  builder: (context) => Container(
                          child: SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(
                                    top:
                                        AppDimens.of(context).main_margin_vbig),
                                alignment: AlignmentDirectional.center,
                                child: Text(
                                    AppTranslations.of(context)
                                        .text("status_account_text"),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: AppDimens.of(context).H1,
                                        color: AppColor.of(context).white_text,
                                        fontFamily: 'AU'))),
                            Container(
                              margin: EdgeInsets.all(
                                  AppDimens.of(context).main_margin_midle),
                              padding: EdgeInsets.only(
                                  top: AppDimens.of(context).main_margin_small),
                              decoration: BoxDecoration(
                                color: AppColor.of(context).white_text,
                                borderRadius: BorderRadius.circular(
                                    AppDimens.of(context).main_margin),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            AppDimens.of(context)
                                                .main_margin_small,
                                            0,
                                            AppDimens.of(context).main_margin,
                                            0),
                                        child: Row(
                                          children: [
                                            Text("10" + " ",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize:
                                                        AppDimens.of(context)
                                                            .H0,
                                                    color: AppColor.of(context)
                                                        .black_text,
                                                    fontFamily: 'AU')),
                                            Text("USD",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize:
                                                        AppDimens.of(context)
                                                            .H0,
                                                    color: AppColor.of(context)
                                                        .black_text
                                                        .withOpacity(0.6),
                                                    fontFamily: 'AU'))
                                          ],
                                        ),
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            inDeveloping(scaffoldKey);
                                          },
                                          child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  AppDimens.of(context)
                                                      .main_margin,
                                                  0,
                                                  AppDimens.of(context)
                                                      .main_margin,
                                                  AppDimens.of(context)
                                                      .main_margin_midle),
                                              padding: EdgeInsets.only(
                                                  top: AppDimens.of(context)
                                                      .main_margin_small,),
                                              child: SvgPicture.asset(
                                                'assets/images/upload_icon.svg',
                                              ))),
                                    ],
                                  ),
                                  Container(
                                      margin: EdgeInsets.all(
                                          AppDimens.of(context)
                                              .main_margin_small),
                                      child: Text("0x154c24...9v9",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize:
                                                  AppDimens.of(context).H2,
                                              fontFamily: 'AU',
                                              color: AppColor.of(context)
                                                  .black_text
                                                  .withOpacity(0.6)))),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                            child: GestureDetector(
                                                onTap: () {
                                                  inDeveloping(scaffoldKey);
                                                },
                                                child: Container(
                                                  height: AppDimens.of(context)
                                                      .main_margin_big,
                                                  margin:
                                                      EdgeInsets.only(right: 1),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.only(
                                                          bottomLeft: Radius
                                                              .circular(AppDimens
                                                                      .of(
                                                                          context)
                                                                  .main_margin)),
                                                      color:
                                                          AppColor.of(context)
                                                              .main_color),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                          margin: EdgeInsets.only(
                                                              right: AppDimens.of(
                                                                      context)
                                                                  .main_margin_small),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/upload_icon.svg',
                                                          )),
                                                      Text(
                                                          AppTranslations.of(
                                                                  context)
                                                              .text(
                                                                  "send_text"),
                                                          textAlign: TextAlign
                                                              .start,
                                                          style: TextStyle(
                                                              fontSize:
                                                                  AppDimens.of(
                                                                          context)
                                                                      .H2,
                                                              color: AppColor.of(
                                                                      context)
                                                                  .black_text,
                                                              fontFamily: 'AU'))
                                                    ],
                                                  ),
                                                ))),
                                        Expanded(
                                            child: GestureDetector(
                                                onTap: () {
                                                  inDeveloping(scaffoldKey);
                                                },
                                                child: Container(
                                                  height: AppDimens.of(context)
                                                      .main_margin_big,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.only(
                                                          bottomRight: Radius
                                                              .circular(AppDimens
                                                                      .of(
                                                                          context)
                                                                  .main_margin)),
                                                      color:
                                                          AppColor.of(context)
                                                              .main_color),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                          margin: EdgeInsets.only(
                                                              right: AppDimens.of(
                                                                      context)
                                                                  .main_margin_small),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/get_icon.svg',
                                                          )),
                                                      Text(
                                                          AppTranslations.of(
                                                                  context)
                                                              .text("get_text"),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                              fontSize:
                                                                  AppDimens.of(
                                                                          context)
                                                                      .H2,
                                                              color: AppColor.of(
                                                                      context)
                                                                  .black_text,
                                                              fontFamily: 'AU'))
                                                    ],
                                                  ),
                                                )))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              alignment: AlignmentDirectional.center,
                              height: 50,
                              child: TabBar(
                                controller: _controller,
                                labelColor: AppColor.of(context).main_color,
                                isScrollable: true,
                                indicatorColor: Colors.black,
                                indicatorSize: TabBarIndicatorSize.label,
                                unselectedLabelColor:
                                    AppColor.of(context).white_text,
                                tabs: [
                                  Text(
                                    AppTranslations.of(context)
                                        .text('assets_text'),
                                    style: TextStyle(
                                        fontSize: AppDimens.of(context).H2,
                                        fontFamily: 'AU'),
                                  ),
                                  Text(
                                      AppTranslations.of(context)
                                          .text('collections_text'),
                                      style: TextStyle(
                                          fontSize: AppDimens.of(context).H2,
                                          fontFamily: 'AU')),
                                  Text(
                                      AppTranslations.of(context)
                                          .text('history_text'),
                                      style: TextStyle(
                                          fontSize: AppDimens.of(context).H2,
                                          fontFamily: 'AU')),
                                ],
                              ),
                            ),

                            // create widgets for each tab bar here
                            Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: TabBarView(
                                  controller: _controller,
                                  children: [
                                    Column(children: [
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
                                    ],),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                      Container(
                                          padding:
                                          EdgeInsets.only(top: AppDimens.of(context).main_margin_small),
                                          margin: EdgeInsets.fromLTRB(0,
                                              AppDimens.of(context).main_margin_small, 0, 0),
                                          child: Center(
                                              child: GestureDetector(
                                                  onTap: () {
                                                    inDeveloping(scaffoldKey);
                                                  },
                                                  child: Container(
                                                  padding:
                                                  EdgeInsets.only(top: AppDimens.of(context).main_margin_midle, bottom:  AppDimens.of(context).main_margin_midle),
                                                color:  AppColor.of(context)
                                                    .main_color.withOpacity(0.2),
                                                  margin: EdgeInsets.only(
                                                      top: AppDimens.of(context).main_margin_small),
                                                  child:
                                                        Row(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Container(
                                                                  margin: EdgeInsets.fromLTRB(
                                                                      0.0,
                                                                      0.0,
                                                                      AppDimens.of(context).main_margin_small,
                                                                      0.0),
                                                                  child:
                                                                          SvgPicture.asset(
                                                                            'assets/images/upload_icon.svg',
                                                                            color: AppColor.of(context)
                                                                                .white_text,
                                                                            width: AppDimens.of(context).H0,
                                                                            height: AppDimens.of(context).H0,

                                                                      )),
                                                              Container(
                                                                  child:
                                                                        Text(AppTranslations.of(context)
                                                                                    .text("account_text1"),
                                                                            textAlign: TextAlign.start,
                                                                            style: TextStyle(
                                                                                fontSize:
                                                                                AppDimens.of(context).H2,
                                                                                fontFamily: 'SF',
                                                                                color: AppColor.of(context)
                                                                                    .white_text)),
                                                                      ),
                                                      ]))))),

                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0.0,
                                            AppDimens.of(context).main_margin,
                                            0.0,
                                            0.0),
                                        child:
                                        Text(AppTranslations.of(context)
                                            .text("account_text2"),
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize:
                                                AppDimens.of(context).H2,
                                                fontFamily: 'SF',
                                                color: AppColor.of(context)
                                                    .white_text
                                                    .withOpacity(0.6))),
                                      ),
                                    ],),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                      Container(
                                          padding:
                                          EdgeInsets.only(top: AppDimens.of(context).main_margin_small),
                                          margin: EdgeInsets.fromLTRB(0,
                                              AppDimens.of(context).main_margin_small, 0, 0),
                                          child: Center(
                                              child: GestureDetector(
                                                  onTap: () {
                                                    inDeveloping(scaffoldKey);
                                                  },
                                                  child: Container(
                                                  padding:
                                                  EdgeInsets.only(top: AppDimens.of(context).main_margin_midle, bottom:  AppDimens.of(context).main_margin_midle),
                                                color:  AppColor.of(context)
                                                    .main_color.withOpacity(0.2),
                                                  margin: EdgeInsets.only(
                                                      top: AppDimens.of(context).main_margin_small),
                                                  child:
                                                        Row(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Container(
                                                                  margin: EdgeInsets.fromLTRB(
                                                                      0.0,
                                                                      0.0,
                                                                      AppDimens.of(context).main_margin_small,
                                                                      0.0),
                                                                  child:
                                                                          SvgPicture.asset(
                                                                            'assets/images/upload_icon.svg',
                                                                            color: AppColor.of(context)
                                                                                .white_text,
                                                                            width: AppDimens.of(context).H0,
                                                                            height: AppDimens.of(context).H0,

                                                                      )),
                                                              Container(
                                                                  child:
                                                                        Text(AppTranslations.of(context)
                                                                                    .text("account_text3"),
                                                                            textAlign: TextAlign.start,
                                                                            style: TextStyle(
                                                                                fontSize:
                                                                                AppDimens.of(context).H2,
                                                                                fontFamily: 'SF',
                                                                                color: AppColor.of(context)
                                                                                    .white_text)),
                                                                      ),
                                                      ]))))),

                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0.0,
                                            AppDimens.of(context).main_margin,
                                            0.0,
                                            0.0),
                                        child:
                                        Text(AppTranslations.of(context)
                                            .text("account_text4"),
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize:
                                                AppDimens.of(context).H2,
                                                fontFamily: 'SF',
                                                color: AppColor.of(context)
                                                    .white_text
                                                    .withOpacity(0.6))),
                                      ),
                                    ],),
                                  ],
                                )),
                          ]))))));
  }
}
