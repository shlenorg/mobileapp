import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/utils/dimens.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key key}) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool hide = false;
  bool hide1 = false;
  bool hide2 = true;
  bool hide3 = false;

  _NotificationsScreenState();

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
                    Expanded(
                        child: Center(
                            child: Text(
                                AppTranslations.of(context)
                                    .text("notifications_text"),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: AppDimens.of(context).H1,
                                    color: AppColor.of(context).white_text,
                                    fontFamily: 'AU'))))
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
                        Container(
                            padding: EdgeInsets.fromLTRB(
                                AppDimens.of(context).main_margin,
                                AppDimens.of(context).main_margin_vbig,
                                AppDimens.of(context).main_margin,
                                AppDimens.of(context).main_margin_midle),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                      child: Container(
                                          child: Text(
                                              AppTranslations.of(context)
                                                  .text("view_notifications_text"),
                                              style: TextStyle(
                                                  fontSize:
                                                      AppDimens.of(context).H2,
                                                  fontFamily: 'SF',
                                                  color: AppColor.of(context)
                                                      .white_text)))),
                                  Container(
                                    child: FlutterSwitch(
                                      toggleColor:
                                          AppColor.of(context).white_text,
                                      activeColor:
                                          AppColor.of(context).btn_main_color,
                                      inactiveColor: AppColor.of(context)
                                          .text_grey
                                          .withOpacity(0.2),
                                      width:
                                          AppDimens.of(context).main_margin_big,
                                      height: AppDimens.of(context).main_margin,
                                      toggleSize:
                                          AppDimens.of(context).main_margin,
                                      value: hide,
                                      borderRadius: AppDimens.of(context).H2,
                                      onToggle: (val) {
                                        setState(() {
                                          hide = val;
                                        });
                                      },
                                    ),
                                  ),
                                ])),
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
                                    child: Text(AppTranslations.of(context).text("notification_settings_text"),
                                        style: TextStyle(
                                            fontSize: AppDimens.of(context).H2,
                                            fontFamily: 'SF',
                                            color: AppColor.of(context).text_grey.withOpacity(0.6)),
                                        textAlign: TextAlign.start)),
                                Container(
                                    padding: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin,
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin,
                                        0),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                              child: Container(
                                                  child: Text(
                                                      AppTranslations.of(context)
                                                          .text("user_notifications_text"),
                                                      style: TextStyle(
                                                          fontSize:
                                                          AppDimens.of(context).H2,
                                                          fontFamily: 'SF',
                                                          color: AppColor.of(context)
                                                              .white_text)))),
                                          Container(
                                            child: FlutterSwitch(
                                              toggleColor:
                                              AppColor.of(context).white_text,
                                              activeColor:
                                              AppColor.of(context).btn_main_color,
                                              inactiveColor: AppColor.of(context)
                                                  .text_grey
                                                  .withOpacity(0.2),
                                              width:
                                              AppDimens.of(context).main_margin_big,
                                              height: AppDimens.of(context).main_margin,
                                              toggleSize:
                                              AppDimens.of(context).main_margin,
                                              value: hide1,
                                              borderRadius: AppDimens.of(context).H2,
                                              onToggle: (val) {
                                                setState(() {
                                                  hide1 = val;
                                                });
                                              },
                                            ),
                                          ),
                                        ])),
                                Container(
                                    padding: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin,
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin,
                                        0),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                              child: Container(
                                                  child: Text(
                                                      AppTranslations.of(context)
                                                          .text("display_notifications_text"),
                                                      style: TextStyle(
                                                          fontSize:
                                                          AppDimens.of(context).H2,
                                                          fontFamily: 'SF',
                                                          color: AppColor.of(context)
                                                              .white_text)))),
                                          Container(
                                            child: FlutterSwitch(
                                              toggleColor:
                                              AppColor.of(context).white_text,
                                              activeColor:
                                              AppColor.of(context).btn_main_color,
                                              inactiveColor: AppColor.of(context)
                                                  .text_grey
                                                  .withOpacity(0.2),
                                              width:
                                              AppDimens.of(context).main_margin_big,
                                              height: AppDimens.of(context).main_margin,
                                              toggleSize:
                                              AppDimens.of(context).main_margin,
                                              value: hide2,
                                              borderRadius: AppDimens.of(context).H2,
                                              onToggle: (val) {
                                                setState(() {
                                                  hide2 = val;
                                                });
                                              },
                                            ),
                                          ),
                                        ])),
                                Container(
                                    padding: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin,
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin,
                                        AppDimens.of(context).main_margin_midle),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                              child: Container(
                                                  child: Text(
                                                      AppTranslations.of(context)
                                                          .text("wallet_operations_text"),
                                                      style: TextStyle(
                                                          fontSize:
                                                          AppDimens.of(context).H2,
                                                          fontFamily: 'SF',
                                                          color: AppColor.of(context)
                                                              .white_text)))),
                                          Container(
                                            child: FlutterSwitch(
                                              toggleColor:
                                              AppColor.of(context).white_text,
                                              activeColor:
                                              AppColor.of(context).btn_main_color,
                                              inactiveColor: AppColor.of(context)
                                                  .text_grey
                                                  .withOpacity(0.2),
                                              width:
                                              AppDimens.of(context).main_margin_big,
                                              height: AppDimens.of(context).main_margin,
                                              toggleSize:
                                              AppDimens.of(context).main_margin,
                                              value: hide3,
                                              borderRadius: AppDimens.of(context).H2,
                                              onToggle: (val) {
                                                setState(() {
                                                  hide3 = val;
                                                });
                                              },
                                            ),
                                          ),
                                        ])),
                      ])))));
  }
}
