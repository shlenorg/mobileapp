import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/screens/main/start_screen.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'create_new_key_screen.dart';

class SmoothScreen extends StatefulWidget {
  const SmoothScreen({
    Key key,
  }) : super(key: key);

  @override
  _SmoothScreenState createState() => _SmoothScreenState();
}

class _SmoothScreenState extends State<SmoothScreen> {
  final controller = PageController(viewportFraction: 1);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  _SmoothScreenState({
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
    var smooth_item = Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.3,
              child: PageView(
                controller: controller,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Expanded(
                                child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/star_image.png"),
                                            fit: BoxFit.fitWidth)))),
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    AppDimens.of(context).main_margin,
                                    0.0,
                                    AppDimens.of(context).main_margin,
                                    0.0),
                                child: Text(
                                    AppTranslations.of(context)
                                        .text("decentralizad_apps_text"),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: AppDimens.of(context).H1,
                                        fontFamily: 'AU',
                                        color:
                                            AppColor.of(context).white_text))),
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    AppDimens.of(context).main_margin,
                                    AppDimens.of(context).main_margin_small,
                                    AppDimens.of(context).main_margin,
                                    0.0),
                                child: Text(
                                    AppTranslations.of(context)
                                        .text("main_smooth1_text"),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: AppDimens.of(context).H3,
                                        fontFamily: 'SF',
                                        color: AppColor.of(context)
                                            .text_grey
                                            .withOpacity(0.6))))
                          ])),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/shield_image.png"),
                                        fit: BoxFit.fill)))),
                        Container(
                            margin: EdgeInsets.fromLTRB(
                                AppDimens.of(context).main_margin,
                                0.0,
                                AppDimens.of(context).main_margin,
                                0.0),
                            child: Text(
                                AppTranslations.of(context)
                                    .text("secure_crypto_wallet_text"),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: AppDimens.of(context).H1,
                                    fontFamily: 'AU',
                                    color: AppColor.of(context).white_text))),
                        Container(
                            margin: EdgeInsets.fromLTRB(
                                AppDimens.of(context).main_margin,
                                AppDimens.of(context).main_margin_small,
                                AppDimens.of(context).main_margin,
                                0.0),
                            child: Text(
                                AppTranslations.of(context)
                                    .text("main_smooth2_text"),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: AppDimens.of(context).H3,
                                    fontFamily: 'SF',
                                    color: AppColor.of(context)
                                        .text_grey
                                        .withOpacity(0.6))))
                      ]),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/spirale_image.png"),
                                        fit: BoxFit.fill)))),
                        Container(
                            margin: EdgeInsets.fromLTRB(
                                AppDimens.of(context).main_margin,
                                0.0,
                                AppDimens.of(context).main_margin,
                                0.0),
                            child: Text(
                                AppTranslations.of(context)
                                    .text("truly_private_text"),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: AppDimens.of(context).H1,
                                    fontFamily: 'AU',
                                    color: AppColor.of(context).white_text))),
                        Container(
                            margin: EdgeInsets.fromLTRB(
                                AppDimens.of(context).main_margin,
                                AppDimens.of(context).main_margin_small,
                                AppDimens.of(context).main_margin,
                                0.0),
                            child: Text(
                                AppTranslations.of(context)
                                    .text("main_smooth3_text"),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: AppDimens.of(context).H3,
                                    fontFamily: 'SF',
                                    color: AppColor.of(context)
                                        .text_grey
                                        .withOpacity(0.6))))
                      ]),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  AppDimens.of(context).main_margin_small,
                  AppDimens.of(context).main_margin_small,
                  AppDimens.of(context).main_margin,
                  0.0),
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ExpandingDotsEffect(

                  dotHeight: AppDimens.of(context).main_margin_small,
                  dotWidth: AppDimens.of(context).main_margin_small,
//                  expansionFactor: 3,
                  dotColor: AppColor.of(context).text_grey.withOpacity(0.3),
                  activeDotColor: AppColor.of(context).btn_main_color,
                ),
              ),
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(
                    AppDimens.of(context).main_margin,
                    AppDimens.of(context).main_margin_small,
                    AppDimens.of(context).main_margin,
                    0.0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateNewKeyScreen()));
                  },
                  child: Text(AppTranslations.of(context).text("get_started_text"),
                      style: TextStyle(fontFamily: 'SF')),
                  color: AppColor.of(context).btn_main_color,
                  textColor: AppColor.of(context).btn_main_text_color,
                  padding: EdgeInsets.fromLTRB(0.0, AppDimens.of(context).main_margin_small,
                      0.0, AppDimens.of(context).main_margin_small),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          AppDimens.of(context).main_margin_small)),
                )),

            Container(
                margin: EdgeInsets.fromLTRB(
                    AppDimens.of(context).main_margin,
                    AppDimens.of(context).main_margin_small,
                    AppDimens.of(context).main_margin,
                    0.0),
                child: Text(
                    AppTranslations.of(context)
                        .text("main_smooth_text"),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: AppDimens.of(context).H4,
                        fontFamily: 'SF',
                        color: AppColor.of(context)
                            .text_grey
                            .withOpacity(0.6))))
          ],
        ),
    );
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: AppColor.of(context).main_bg,
        body: Builder(
            builder: (context) =>
                Container(child: SingleChildScrollView(child: smooth_item))));
  }
}
