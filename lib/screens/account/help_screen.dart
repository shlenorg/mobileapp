
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/screens/account/glossary_screen.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';

class HelpScreen extends StatefulWidget {

  const HelpScreen({Key key}) : super(key: key);

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  _HelpScreenState();

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
                onPressed: (){

                }),
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
                                  .text("need_help_text"),
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
                          crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              GestureDetector(
                                  onTap: () {
                                    inDeveloping(scaffoldKey);
                                  },
                                  child: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          AppDimens.of(context)
                                              .main_margin,
                                          AppDimens.of(context)
                                              .main_margin_vbig,
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
                                                    Text(AppTranslations.of(context).text("frequently_asked_questions_text"),
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
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                GlossaryScreen()));
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
                                                    Text(AppTranslations.of(context).text("glossary_text"),
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
                                                    Text(AppTranslations.of(context).text("report_bug_text"),
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
                                                    Text(AppTranslations.of(context).text("request_feature_text"),
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
