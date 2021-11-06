import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';

class SynchronizationScreen extends StatefulWidget {
  const SynchronizationScreen({Key key}) : super(key: key);

  @override
  _SynchronizationScreenState createState() => _SynchronizationScreenState();
}

class _SynchronizationScreenState extends State<SynchronizationScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  _SynchronizationScreenState();

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
    return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
              elevation: 0.0,
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.share, color: Colors.transparent),
                    onPressed: () {}),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                        Center(
                            child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    AppDimens.of(context).main_margin,
                                    AppDimens.of(context).main_margin_vbig,
                                    AppDimens.of(context).main_margin,
                                    0),
                                child: Text(
                                AppTranslations.of(context)
                                    .text("synchronization_settings_text"),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: AppDimens.of(context).H1,
                                    color: AppColor.of(context).white_text,
                                    fontFamily: 'AU'))),),

                                Container(
                                    padding: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin,
                                        AppDimens.of(context).main_margin, AppDimens.of(context).main_margin, 0.0),
                                    child: Text(AppTranslations.of(context).text("data_sync_text"),
                                        style: TextStyle(
                                            fontSize: AppDimens.of(context).H2,
                                            fontFamily: 'SF',
                                            color: AppColor.of(context).text_grey.withOpacity(0.6)),
                                        textAlign: TextAlign.start)),
                                GestureDetector(
                                    onTap: () {
                                      inDeveloping(scaffoldKey);
                                    },
                                    child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            AppDimens.of(context)
                                                .main_margin,
                                            AppDimens.of(context)
                                                .main_margin_midle,
                                            AppDimens.of(context)
                                                .main_margin,
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
                                                      Text(AppTranslations.of(context).text("mobile_data_text"),
                                                          style: TextStyle(
                                                              fontSize: AppDimens.of(context).H2,
                                                              fontFamily: 'SF',
                                                              color: AppColor.of(context).text_grey),
                                                          textAlign: TextAlign.start),

                                                      Row(children: [
                                                        Container(
                                                            padding: EdgeInsets.fromLTRB(AppDimens.of(context).icon_padding,
                                                                0, AppDimens.of(context).icon_padding, 0.0),
                                                            child: Text("only Wi-Fi",
                                                                style: TextStyle(
                                                                    fontSize: AppDimens.of(context).H3,
                                                                    fontFamily: 'SF',
                                                                    color: AppColor.of(context).text_grey.withOpacity(0.6)),
                                                                textAlign: TextAlign.start)),
                                                        Container(
                                                            child: SvgPicture
                                                                .asset("assets/images/arrow_right.svg"
                                                            )),
                                                      ],)
                                                    ]))))),
                                GestureDetector(
                                    onTap: () {
                                      inDeveloping(scaffoldKey);
                                    },
                                    child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            AppDimens.of(context)
                                                .main_margin,
                                            AppDimens.of(context)
                                                .main_margin_midle,
                                            AppDimens.of(context)
                                                .main_margin,
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
                                                      Text(AppTranslations.of(context).text("mailserver_text"),
                                                          style: TextStyle(
                                                              fontSize: AppDimens.of(context).H2,
                                                              fontFamily: 'SF',
                                                              color: AppColor.of(context).text_grey),
                                                          textAlign: TextAlign.start),

                                                      Row(children: [
                                                        Container(
                                                            padding: EdgeInsets.fromLTRB(AppDimens.of(context).icon_padding,
                                                                0, AppDimens.of(context).icon_padding, 0.0),
                                                            child: Text("mail-02.do-ams3.eth.prod",
                                                                style: TextStyle(
                                                                    fontSize: AppDimens.of(context).H3,
                                                                    fontFamily: 'SF',
                                                                    color: AppColor.of(context).text_grey.withOpacity(0.6)),
                                                                textAlign: TextAlign.start)),
                                                        Container(
                                                            child: SvgPicture
                                                                .asset("assets/images/arrow_right.svg"
                                                            )),
                                                      ],)
                                                    ]))))),
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: AppColor.of(context)
                                            .text_grey
                                            .withOpacity(0.3),
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ),

                                Container(
                                    padding: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin,
                                        AppDimens.of(context).main_margin, AppDimens.of(context).main_margin, 0.0),
                                    child: Text(AppTranslations.of(context).text("synchronizing_devices_text"),
                                        style: TextStyle(
                                            fontSize: AppDimens.of(context).H2,
                                            fontFamily: 'SF',
                                            color: AppColor.of(context).text_grey.withOpacity(0.6)),
                                        textAlign: TextAlign.start)),
                                GestureDetector(
                                    onTap: () {
                                      inDeveloping(scaffoldKey);
                                    },
                                    child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            AppDimens.of(context)
                                                .main_margin,
                                            AppDimens.of(context)
                                                .main_margin_midle,
                                            AppDimens.of(context)
                                                .main_margin,
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
                                                      Text(AppTranslations.of(context).text("devices_text"),
                                                          style: TextStyle(
                                                              fontSize: AppDimens.of(context).H2,
                                                              fontFamily: 'SF',
                                                              color: AppColor.of(context).text_grey),
                                                          textAlign: TextAlign.start),

                                                      Container(
                                                          child: SvgPicture
                                                              .asset("assets/images/arrow_right.svg"
                                                          )),
                                                    ]))))),
                      ])))));
  }
}
