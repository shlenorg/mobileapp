import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/utils/dimens.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  _AboutScreenState();

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
                                    .text("about_app_text"),
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
                          children: <Widget>[])))));
  }
}
