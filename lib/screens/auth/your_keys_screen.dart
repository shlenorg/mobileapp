import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/screens/auth/create_new_key_screen.dart';
import 'package:shlen/screens/auth/enter_key_screen.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';

class YorKeysScreen extends StatefulWidget {
  const YorKeysScreen({Key key}) : super(key: key);

  @override
  _YorKeysScreenState createState() => _YorKeysScreenState();
}

class _YorKeysScreenState extends State<YorKeysScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String photo;

  _YorKeysScreenState();

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
                  icon:
                      Icon(Icons.more_horiz, color: AppColor.of(context).grey),
                  onPressed: () => _settingModalBottomSheet(context)),
            ],
            backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              titleSpacing: 0,
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
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                        Container(
                            margin: EdgeInsets.fromLTRB(
                                AppDimens.of(context).main_margin_midle,
                                AppDimens.of(context).main_margin_vbig,
                                AppDimens.of(context).main_margin_midle,
                                0.0),
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                                AppTranslations.of(context)
                                    .text("your_keys_text"),
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: AppDimens.of(context).H1,
                                    color: AppColor.of(context).white_text,
                                    fontFamily: 'AU'))),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EnterKeyScreen()));
                            },
                            child: Container(
                                padding: EdgeInsets.only(
                                    top: AppDimens.of(context)
                                        .main_margin_small),
                                margin: EdgeInsets.fromLTRB(
                                    AppDimens.of(context).main_margin_midle,
                                    AppDimens.of(context).main_margin_midle,
                                    AppDimens.of(context).main_margin_midle,
                                    0),
                                child: Center(
                                    child: Container(
                                        margin: EdgeInsets.only(
                                            top: AppDimens.of(context)
                                                .main_margin_small),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        width: AppDimens.of(
                                                                context)
                                                            .icon_logo_height,
                                                        height: AppDimens.of(
                                                                context)
                                                            .icon_logo_height,
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color: AppColor.of(
                                                                      context)
                                                                  .white_text,
                                                              width: 1),
                                                          borderRadius: BorderRadius
                                                              .circular(AppDimens
                                                                      .of(context)
                                                                  .main_margin_small),
                                                        ),
                                                        margin: EdgeInsets.fromLTRB(
                                                            0.0,
                                                            0.0,
                                                            AppDimens.of(context)
                                                                .main_margin_small,
                                                            0.0),
                                                        child: ClipRRect(
                                                            borderRadius: BorderRadius
                                                                .circular(AppDimens.of(
                                                                        context)
                                                                    .main_margin_midle),
                                                            child:
                                                                photo != "" &&
                                                                        photo !=
                                                                            null
                                                                    ? Image
                                                                        .network(
                                                                        photo,
                                                                        width: AppDimens.of(context)
                                                                            .H1,
                                                                        height:
                                                                            AppDimens.of(context).H1,
                                                                      )
                                                                    : Stack(
                                                                        alignment:
                                                                            AlignmentDirectional.center,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.person,
                                                                            color:
                                                                                AppColor.of(context).white_text,
                                                                            size:
                                                                                AppDimens.of(context).H0,
                                                                          )
                                                                        ],
                                                                      ))),
                                                    Container(
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [Text(
                                                                  "Wary Velvety Beagle",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          AppDimens.of(context)
                                                                              .H3,
                                                                      fontFamily:
                                                                          'AU',
                                                                      color: AppColor.of(
                                                                              context)
                                                                          .white_text)),
                                                        ])),
                                                  ]),
                                              Container(
                                                  child: SvgPicture.asset(
                                                "assets/images/arrow_right.svg",
                                              )),
                                            ]))))),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EnterKeyScreen()));
                            },
                            child: Container(
                                padding: EdgeInsets.only(
                                    top: AppDimens.of(context)
                                        .main_margin_small),
                                margin: EdgeInsets.fromLTRB(
                                    AppDimens.of(context).main_margin_midle,
                                    AppDimens.of(context).main_margin_midle,
                                    AppDimens.of(context).main_margin_midle,
                                    0),
                                child: Center(
                                    child: Container(
                                        margin: EdgeInsets.only(
                                            top: AppDimens.of(context)
                                                .main_margin_small),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        width: AppDimens.of(
                                                                context)
                                                            .icon_logo_height,
                                                        height: AppDimens.of(
                                                                context)
                                                            .icon_logo_height,
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color: AppColor.of(
                                                                      context)
                                                                  .white_text,
                                                              width: 1),
                                                          borderRadius: BorderRadius
                                                              .circular(AppDimens
                                                                      .of(context)
                                                                  .main_margin_small),
                                                        ),
                                                        margin: EdgeInsets.fromLTRB(
                                                            0.0,
                                                            0.0,
                                                            AppDimens.of(context)
                                                                .main_margin_small,
                                                            0.0),
                                                        child: ClipRRect(
                                                            borderRadius: BorderRadius
                                                                .circular(AppDimens.of(
                                                                        context)
                                                                    .main_margin_midle),
                                                            child:
                                                                photo != "" &&
                                                                        photo !=
                                                                            null
                                                                    ? Image
                                                                        .network(
                                                                        photo,
                                                                        width: AppDimens.of(context)
                                                                            .H1,
                                                                        height:
                                                                            AppDimens.of(context).H1,
                                                                      )
                                                                    : Stack(
                                                                        alignment:
                                                                            AlignmentDirectional.center,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.person,
                                                                            color:
                                                                                AppColor.of(context).white_text,
                                                                            size:
                                                                                AppDimens.of(context).H0,
                                                                          )
                                                                        ],
                                                                      ))),
                                                    Container(
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [Text(
                                                                  "Wary Velvety Beagle",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          AppDimens.of(context)
                                                                              .H3,
                                                                      fontFamily:
                                                                          'AU',
                                                                      color: AppColor.of(
                                                                              context)
                                                                          .white_text)),
                                                        ])),
                                                  ]),
                                              Container(
                                                  child: SvgPicture.asset(
                                                "assets/images/arrow_right.svg",
                                              )),
                                            ]))))),
                                Expanded(child: Container(),),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                      AppDimens.of(context).main_margin_midle,
                                      0.0,
                                      AppDimens.of(context).main_margin_midle,
                                      0,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: AppColor.of(context).white_text,
                                          width: 2.0,
                                        ),
                                      ),
                                    )),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_small,
                                        AppDimens.of(context).main_margin_midle,
                                        0.0),
                                    alignment: AlignmentDirectional.center,
                                    child: Text(
                                        AppTranslations.of(context)
                                            .text("existing_keys_text"),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: AppDimens.of(context).H3,
                                            color: AppColor.of(context).white_text,
                                            fontFamily: 'AU'))),
                      ]))));
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
                ListTile(
                    title: Text(
                        AppTranslations.of(context).text('create_key_text'),
                        style: TextStyle(
                            color: AppColor.of(context).white_text.withOpacity(0.6))),
                    leading: Container(
                        width: AppDimens.of(context).main_margin,
                        height: AppDimens.of(context).main_margin,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColor.of(context).white_text.withOpacity(0.6), width: 1),
                          borderRadius: BorderRadius.circular(
                              AppDimens.of(context).main_margin_small),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                AppDimens.of(context).main_margin_midle),
                            child: Icon(
                              Icons.add,
                              color: AppColor.of(context).white_text.withOpacity(0.6),
                              size: AppDimens.of(context).H0,
                            ))),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateNewKeyScreen()));
                    }),
              ],
            ),
          );
        });
  }
}
