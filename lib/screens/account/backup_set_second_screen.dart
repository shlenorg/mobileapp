import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/utils/dimens.dart';

import 'backup_set_third_screen.dart';

class BackUpSetSecondScreen extends StatefulWidget {
  const BackUpSetSecondScreen({Key key}) : super(key: key);

  @override
  _BackUpSetSecondScreenState createState() => _BackUpSetSecondScreenState();
}

class _BackUpSetSecondScreenState extends State<BackUpSetSecondScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  _BackUpSetSecondScreenState();

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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(
                              top: AppDimens.of(context).main_margin_vbig),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                              AppTranslations.of(context)
                                  .text("backup_sed_text"),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: AppDimens.of(context).H1,
                                  color: AppColor.of(context).white_text,
                                  fontFamily: 'AU'))),
                      Container(
                          margin: EdgeInsets.only(
                              top: AppDimens.of(context).main_margin_small),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                              AppTranslations.of(context).text("step_text") +
                                  "2" +
                                  AppTranslations.of(context).text("of_text") +
                                  "3",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: AppDimens.of(context).H2,
                                  color: AppColor.of(context)
                                      .white_text
                                      .withOpacity(0.6),
                                  fontFamily: 'SF'))),
                      Container(
                        margin: EdgeInsets.only(
                            top: AppDimens.of(context).main_margin_midle),
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
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(
                                  AppDimens.of(context).main_margin_midle,
                                  AppDimens.of(context).main_margin_big,
                                  0,
                                  0),
                              alignment: AlignmentDirectional.centerStart,
                              child: Text(
                                  AppTranslations.of(context)
                                      .text("backup_sed_text4"),
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: AppDimens.of(context).H2,
                                      color: AppColor.of(context).white_text,
                                      fontFamily: 'SF'))),
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Column(children: [
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        0),
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text( "1 hammer",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: AppDimens.of(context).H2,
                                            color: AppColor.of(context).white_text,
                                            fontFamily: 'SF'))),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        0),
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text( "2 mind",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: AppDimens.of(context).H2,
                                            color: AppColor.of(context).white_text,
                                            fontFamily: 'SF'))),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        0),
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text( "3 whale",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: AppDimens.of(context).H2,
                                            color: AppColor.of(context).white_text,
                                            fontFamily: 'SF'))),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        0),
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text( "4 age",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: AppDimens.of(context).H2,
                                            color: AppColor.of(context).white_text,
                                            fontFamily: 'SF'))),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        0),
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text( "5 proof",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: AppDimens.of(context).H2,
                                            color: AppColor.of(context).white_text,
                                            fontFamily: 'SF'))),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        0),
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text( "6 rent",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: AppDimens.of(context).H2,
                                            color: AppColor.of(context).white_text,
                                            fontFamily: 'SF'))),
                              ],),
                            ), Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Column(children: [
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        0),
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text( "7 stuff",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: AppDimens.of(context).H2,
                                            color: AppColor.of(context).white_text,
                                            fontFamily: 'SF'))),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        0),
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text( "8 purpose",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: AppDimens.of(context).H2,
                                            color: AppColor.of(context).white_text,
                                            fontFamily: 'SF'))),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        0),
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text( "9 embark",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: AppDimens.of(context).H2,
                                            color: AppColor.of(context).white_text,
                                            fontFamily: 'SF'))),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        0),
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text( "10 tool",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: AppDimens.of(context).H2,
                                            color: AppColor.of(context).white_text,
                                            fontFamily: 'SF'))),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        0),
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text( "11 staff",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: AppDimens.of(context).H2,
                                            color: AppColor.of(context).white_text,
                                            fontFamily: 'SF'))),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        AppDimens.of(context).main_margin_midle,
                                        0),
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text( "12 light",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: AppDimens.of(context).H2,
                                            color: AppColor.of(context).white_text,
                                            fontFamily: 'SF'))),
                              ],),
                            ),
                          ],)
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.all(AppDimens.of(context).main_margin_midle),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                              AppTranslations.of(context)
                                  .text("backup_sed_text5"),
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: AppDimens.of(context).H2,
                                  color: AppColor.of(context)
                                      .white_text,
                                  fontFamily: 'SF'))),
                      Container(
                          margin: EdgeInsets.fromLTRB(
                              AppDimens.of(context).main_margin,
                              0,
                              AppDimens.of(context).main_margin_small,
                              AppDimens.of(context).main_margin_small),
                          alignment: AlignmentDirectional.centerEnd,
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BackUpSetThirdScreen()));
                            },
                            child: Text(
                                AppTranslations.of(context)
                                    .text("next_text"),
                                style: TextStyle(
                                  fontFamily: 'AU',
                                  color: AppColor.of(context)
                                      .white_text,
                                  fontSize: AppDimens.of(context).H3,
                                )),
                            color: Colors.transparent,
                          ))
                    ])))));
  }
}
