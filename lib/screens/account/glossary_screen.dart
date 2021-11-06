import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/utils/dimens.dart';

class GlossaryScreen extends StatefulWidget {
  const GlossaryScreen({Key key}) : super(key: key);

  @override
  _GlossaryScreenState createState() => _GlossaryScreenState();
}

class _GlossaryScreenState extends State<GlossaryScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  _GlossaryScreenState();

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
                                    .text("glossary_text"),
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
                          margin: EdgeInsets.fromLTRB(
                              AppDimens.of(context)
                                  .main_margin_midle,
                              AppDimens.of(context)
                                  .main_margin_vbig,
                              AppDimens.of(context)
                                  .main_margin_midle,
                              AppDimens.of(context)
                                  .main_margin_midle),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Container(
                                padding: EdgeInsets.only(
                                    right: AppDimens.of(context)
                                        .main_margin_small),
                                      alignment: AlignmentDirectional.center,
                                      child: Text("A",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize:
                                                  AppDimens.of(context).H0,
                                              color: AppColor.of(context)
                                                  .main_color,
                                              fontFamily: 'Au'))),
                              Expanded(child: Container(child: Column(
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: AppDimens.of(context)
                                              .main_margin_small),
                                      alignment: AlignmentDirectional.centerStart,
                                      child: Text(
                                          AppTranslations.of(context)
                                              .text("account_text"),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize:
                                                  AppDimens.of(context).H2,
                                              color: AppColor.of(context)
                                                  .white_text,
                                              fontFamily: 'SF'))),
                                   Container(
                                      alignment: AlignmentDirectional.centerStart,
                                      child: Text(
                                          AppTranslations.of(context)
                                              .text("account_text5"),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize:
                                                  AppDimens.of(context).H2,
                                              color: AppColor.of(context)
                                                  .white_text
                                                  .withOpacity(0.6),
                                              fontFamily: 'SF'))),
                                ],
                              )))
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              AppDimens.of(context)
                                  .main_margin_midle,
                              0,
                              AppDimens.of(context)
                                  .main_margin_midle,
                              AppDimens.of(context)
                                  .main_margin_midle),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Container(
                                padding: EdgeInsets.only(
                                    right: AppDimens.of(context)
                                        .main_margin_small),
                                      alignment: AlignmentDirectional.center,
                                      child: Text("E",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize:
                                                  AppDimens.of(context).H0,
                                              color: AppColor.of(context)
                                                  .main_color,
                                              fontFamily: 'Au'))),
                              Expanded(child: Container(child: Column(
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: AppDimens.of(context)
                                              .main_margin_small),
                                      alignment: AlignmentDirectional.centerStart,
                                      child: Text(
                                          AppTranslations.of(context)
                                              .text("ens_name_text"),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize:
                                                  AppDimens.of(context).H2,
                                              color: AppColor.of(context)
                                                  .white_text,
                                              fontFamily: 'SF'))),
                                   Container(
                                      alignment: AlignmentDirectional.centerStart,
                                      child: Text(
                                          AppTranslations.of(context)
                                              .text("ens_text16"),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize:
                                                  AppDimens.of(context).H2,
                                              color: AppColor.of(context)
                                                  .white_text
                                                  .withOpacity(0.6),
                                              fontFamily: 'SF'))),
                                ],
                              )))
                            ],
                          ),
                        )
                      ])))));
  }
}
