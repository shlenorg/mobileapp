
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/screens/account/user_name_screen.dart';
import 'package:shlen/utils/dimens.dart';

class ENSNameScreen extends StatefulWidget {

  const ENSNameScreen({Key key}) : super(key: key);

  @override
  _ENSNameScreenState createState() => _ENSNameScreenState();
}

class _ENSNameScreenState extends State<ENSNameScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  _ENSNameScreenState();

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
                  // Expanded(
                  //     child: Center(
                  //         child: Text(
                  //             AppTranslations.of(context)
                  //                 .text("ens_name_text"),
                  //             textAlign: TextAlign.center,
                  //             style: TextStyle(
                  //                 fontSize: AppDimens.of(context).H1,
                  //                 color: AppColor.of(context).white_text,
                  //                 fontFamily: 'AU'))))
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
                              Stack(
                                alignment: AlignmentDirectional.topCenter,
                                children: [
                                Container(
                                    height: MediaQuery.of(context).size.height / 1.5,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/ens_image.png"),
                                            fit: BoxFit.fitWidth))),
                                  Container(
                                      margin: EdgeInsets.fromLTRB(
                                          AppDimens.of(context).main_margin,
                                          AppDimens.of(context).icon_logo_height,
                                          AppDimens.of(context).main_margin,
                                          0.0),
                                      child: Text(
                                          AppTranslations.of(context)
                                              .text("ens_name_text"),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: AppDimens.of(context).H1,
                                              fontFamily: 'AU',
                                              color:
                                              AppColor.of(context).white_text))),

                              ],), Container(
                                  margin: EdgeInsets.fromLTRB(
                                      AppDimens.of(context).main_margin,
                                      0.0,
                                      AppDimens.of(context).main_margin,
                                      0.0),
                                  child: Text(
                                      AppTranslations.of(context)
                                          .text("ens_text1"),
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
                                                    .text("ens_text2"),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: AppDimens.of(context).H3,
                                                    fontFamily: 'SF',
                                                    color: AppColor.of(context)
                                                        .text_grey
                                                        .withOpacity(0.6)))),
                                        Container(
                                          alignment: AlignmentDirectional.centerStart,
                                            margin: EdgeInsets.fromLTRB(
                                                AppDimens.of(context).main_margin,
                                                AppDimens.of(context).main_margin,
                                                AppDimens.of(context).main_margin,
                                                0.0),
                                            child: Text(
                                                AppTranslations.of(context)
                                                    .text("ens_text3"),
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: AppDimens.of(context).H3,
                                                    fontFamily: 'SF',
                                                    color: AppColor.of(context)
                                                        .text_grey))),
                                        Container(
                                            alignment: AlignmentDirectional.centerStart,
                                            margin: EdgeInsets.fromLTRB(
                                                AppDimens.of(context).main_margin,
                                                0.0,
                                                AppDimens.of(context).main_margin,
                                                0.0),
                                            child: Text(
                                                AppTranslations.of(context)
                                                    .text("ens_text4"),
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: AppDimens.of(context).H3,
                                                    fontFamily: 'SF',
                                                    color: AppColor.of(context)
                                                        .text_grey
                                                        .withOpacity(0.6)))),
                                        Container(
                                            alignment: AlignmentDirectional.centerStart,
                                            margin: EdgeInsets.fromLTRB(
                                                AppDimens.of(context).main_margin,
                                                AppDimens.of(context).main_margin,
                                                AppDimens.of(context).main_margin,
                                                0.0),
                                            child: Text(
                                                AppTranslations.of(context)
                                                    .text("ens_text5"),
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: AppDimens.of(context).H3,
                                                    fontFamily: 'SF',
                                                    color: AppColor.of(context)
                                                        .text_grey))),
                                        Container(
                                            alignment: AlignmentDirectional.centerStart,
                                            margin: EdgeInsets.fromLTRB(
                                                AppDimens.of(context).main_margin,
                                                0.0,
                                                AppDimens.of(context).main_margin,
                                                0.0),
                                            child: Text(
                                                AppTranslations.of(context)
                                                    .text("ens_text6"),
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: AppDimens.of(context).H3,
                                                    fontFamily: 'SF',
                                                    color: AppColor.of(context)
                                                        .text_grey
                                                        .withOpacity(0.6)))),
                                        Container(
                                            alignment: AlignmentDirectional.centerStart,
                                            margin: EdgeInsets.fromLTRB(
                                                AppDimens.of(context).main_margin,
                                                AppDimens.of(context).main_margin,
                                                AppDimens.of(context).main_margin,
                                                0.0),
                                            child: Text(
                                                AppTranslations.of(context)
                                                    .text("ens_text7"),
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: AppDimens.of(context).H3,
                                                    fontFamily: 'SF',
                                                    color: AppColor.of(context)
                                                        .text_grey))),
                                        Container(
                                            alignment: AlignmentDirectional.centerStart,
                                            margin: EdgeInsets.fromLTRB(
                                                AppDimens.of(context).main_margin,
                                                0.0,
                                                AppDimens.of(context).main_margin,
                                                0.0),
                                            child: Text(
                                                AppTranslations.of(context)
                                                    .text("ens_text8"),
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: AppDimens.of(context).H3,
                                                    fontFamily: 'SF',
                                                    color: AppColor.of(context)
                                                        .text_grey
                                                        .withOpacity(0.6)))),
                                        Container(
                                            alignment: AlignmentDirectional.centerStart,
                                            margin: EdgeInsets.fromLTRB(
                                                AppDimens.of(context).main_margin,
                                                AppDimens.of(context).main_margin,
                                                AppDimens.of(context).main_margin,
                                                0.0),
                                            child: Text(
                                                AppTranslations.of(context)
                                                    .text("ens_text9"),
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: AppDimens.of(context).H3,
                                                    fontFamily: 'SF',
                                                    color: AppColor.of(context)
                                                        .text_grey))),
                                        Container(
                                            alignment: AlignmentDirectional.centerStart,
                                            margin: EdgeInsets.fromLTRB(
                                                AppDimens.of(context).main_margin,
                                                0.0,
                                                AppDimens.of(context).main_margin,
                                                0.0),
                                            child: Text(
                                                AppTranslations.of(context)
                                                    .text("ens_text10"),
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: AppDimens.of(context).H3,
                                                    fontFamily: 'SF',
                                                    color: AppColor.of(context)
                                                        .text_grey
                                                        .withOpacity(0.6)))),
                                        Container(
                                            alignment: AlignmentDirectional.centerStart,
                                            margin: EdgeInsets.fromLTRB(
                                                AppDimens.of(context).main_margin,
                                                AppDimens.of(context).main_margin_big,
                                                AppDimens.of(context).main_margin,
                                                0.0),
                                            child: Text(
                                                AppTranslations.of(context)
                                                    .text("ens_text11"),
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: AppDimens.of(context).H3,
                                                    fontFamily: 'SF',
                                                    color: AppColor.of(context)
                                                        .text_grey))),
                                        Container(
                                            alignment: AlignmentDirectional.centerStart,
                                            margin: EdgeInsets.fromLTRB(
                                                AppDimens.of(context).main_margin,
                                                0.0,
                                                AppDimens.of(context).main_margin,
                                                0.0),
                                            child: Text(
                                                AppTranslations.of(context)
                                                    .text("ens_text12"),
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: AppDimens.of(context).H3,
                                                    fontFamily: 'SF',
                                                    color: AppColor.of(context)
                                                        .text_grey
                                                        .withOpacity(0.6)))),
                                        Container(
                                            alignment: AlignmentDirectional.centerStart,
                                            margin: EdgeInsets.fromLTRB(
                                                AppDimens.of(context).main_margin,
                                                AppDimens.of(context).main_margin,
                                                AppDimens.of(context).main_margin,
                                                0.0),
                                            child: Text(
                                                AppTranslations.of(context)
                                                    .text("ens_text13"),
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: AppDimens.of(context).H3,
                                                    fontFamily: 'SF',
                                                    color: AppColor.of(context)
                                                        .text_grey
                                                        .withOpacity(0.6)))),

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
                                                  UserNameScreen()));
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
                                      ])),
                    )));
  }
}
