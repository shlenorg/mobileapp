import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/screens/account/backup_set_screen.dart';
import 'package:shlen/screens/account/delete_profile_screen.dart';
import 'package:shlen/utils/dimens.dart';

class PrivacySecurityScreen extends StatefulWidget {
  const PrivacySecurityScreen({Key key}) : super(key: key);

  @override
  _PrivacySecurityScreenState createState() => _PrivacySecurityScreenState();
}

class _PrivacySecurityScreenState extends State<PrivacySecurityScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool block = false;
  bool hide = true;

  _PrivacySecurityScreenState();

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
    var top_content = Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColor.of(context).text_grey.withOpacity(0.3),
              width: 1.0,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin,
                    AppDimens.of(context).main_margin_vbig, AppDimens.of(context).main_margin, 0.0),
                child: Text(AppTranslations.of(context).text("safety_text"),
                    style: TextStyle(
                        fontSize: AppDimens.of(context).H2,
                        fontFamily: 'SF',
                        color: AppColor.of(context).text_grey.withOpacity(0.6)),
                    textAlign: TextAlign.start)),
            Container(
                padding: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin,
                    AppDimens.of(context).main_margin_midle, AppDimens.of(context).main_margin, 0.0),
                child: Text(AppTranslations.of(context).text("ps_text1"),
                    style: TextStyle(
                        fontSize: AppDimens.of(context).H2,
                        fontFamily: 'SF',
                        color: AppColor.of(context).text_grey.withOpacity(0.6)),
                    textAlign: TextAlign.start)),
            Container(
                padding: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin,
                    AppDimens.of(context).main_margin_midle, AppDimens.of(context).main_margin, AppDimens.of(context).main_margin_midle),
                child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      Flexible(
                          child: Container(
                              child: Text(
                                  AppTranslations.of(context)
                                      .text("ps_text2"),
                                  style: TextStyle(
                                      fontSize: AppDimens.of(context).H2,
                                      fontFamily: 'SF',
                                      color:
                                          AppColor.of(context).white_text)))),
                      Container(
                          child:
                          FlutterSwitch(
                            toggleColor:  AppColor.of(context).white_text,
                            activeColor: AppColor.of(context).btn_main_color,
                            inactiveColor: AppColor.of(context).text_grey.withOpacity(0.2),
                            width: AppDimens.of(context).main_margin_big,
                            height: AppDimens.of(context).main_margin,
                            toggleSize: AppDimens.of(context).main_margin,
                            value: block,
                            borderRadius: AppDimens.of(context).H2,
                            onToggle: (val) {
                              setState(() {
                                block = val;
                              });
                            },
                          ),),
                    ])))
          ],
        ));
    var middle_content = Container(
      alignment: AlignmentDirectional.centerStart,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColor.of(context).text_grey.withOpacity(0.3),
              width: 1.0,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin,
                    AppDimens.of(context).main_margin, AppDimens.of(context).main_margin, 0.0),
                child: Text(AppTranslations.of(context).text("ps_text3"),
                    style: TextStyle(
                        fontSize: AppDimens.of(context).H2,
                        fontFamily: 'SF',
                        color: AppColor.of(context).text_grey.withOpacity(0.6)),
                    textAlign: TextAlign.start)),

            GestureDetector(
              //You need to make my child interactive
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              BackUpSetScreen()));

                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(
                        AppDimens.of(context)
                            .main_margin,
                        AppDimens.of(context)
                            .main_margin_small,
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
                                  Text(AppTranslations.of(context).text("ps_text4"),
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

            Container(
                padding: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin,
                AppDimens.of(context).main_margin_midle, AppDimens.of(context).main_margin, AppDimens.of(context).main_margin_midle),
                child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      Flexible(
                          child: Container(
                              child: Text(
                                  AppTranslations.of(context)
                                      .text("ps_text6"),
                                  style: TextStyle(
                                      fontSize: AppDimens.of(context).H2,
                                      fontFamily: 'SF',
                                      color:
                                          AppColor.of(context).white_text)))),
                      Container(
                          child:
                          FlutterSwitch(
                            toggleColor:  AppColor.of(context).white_text,
                            activeColor: AppColor.of(context).btn_main_color,
                            inactiveColor: AppColor.of(context).text_grey.withOpacity(0.2),
                            width: AppDimens.of(context).main_margin_big,
                            height: AppDimens.of(context).main_margin,
                            toggleSize: AppDimens.of(context).main_margin,
                            value: hide,
                            borderRadius: AppDimens.of(context).H2,
                            onToggle: (val) {
                              setState(() {
                                hide = val;
                              });
                            },
                          ),
                      ),
                    ]))
          ],
        ));
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
                                  .text("pas_text"),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        top_content,
                          middle_content,

                          GestureDetector(
                            //You need to make my child interactive
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DeleteProfileScreen()));

                              },
                              child: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      AppDimens.of(context)
                                          .main_margin,
                                      AppDimens.of(context)
                                          .main_margin_small,
                                      AppDimens.of(context)
                                          .main_margin,
                                      0.0),
                                  padding: EdgeInsets.only(top:
                                  AppDimens.of(context)
                                      .main_margin_small),
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
                                              children: [Text(AppTranslations.of(context).text("ps_text7"),
                                                        style: TextStyle(
                                                            fontSize: AppDimens.of(context).H2,
                                                            fontFamily: 'SF',
                                                            color: AppColor.of(context).red),
                                                        textAlign: TextAlign.start),

                                                Container(
                                                    child: SvgPicture
                                                        .asset("assets/images/arrow_right.svg",
                                                      color: AppColor.of(context).red,
                                                    )),
                                              ]))))),

                        ])))));
  }
}
