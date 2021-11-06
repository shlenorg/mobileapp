import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/screens/main/start_screen.dart';
import 'package:shlen/utils/constants.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({Key key}) : super(key: key);

  @override
  _ThemeScreenState createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int theme = 0;

  _ThemeScreenState();

  @override
  void initState() {
    super.initState();
    getTheme();
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
                                    .text("theme_text"),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                        Container(
                            margin: EdgeInsets.fromLTRB(
                                AppDimens.of(context).main_margin_midle,
                                AppDimens.of(context).main_margin_vbig,
                                AppDimens.of(context).main_margin_midle,
                                AppDimens.of(context).main_margin_midle),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    //You need to make my child interactive
                                    onTap: () {
                                      saveInt(0, Constants.of(context).themes);
                                      AppColor.of(context).changeColor(0);
                                      setState(() {
                                        theme = 0;
                                      });
                                    },
                                    child: Container(
                                        child: Stack(
                                      children: [
                                        theme == 0 ? Container(
                                            width:
                                                AppDimens.of(context).box_width,
                                            height: AppDimens.of(context).box_height,
                                            decoration: BoxDecoration(
                                              color: AppColor.of(context)
                                                  .lite_black,
                                              border: Border.all(
                                                  color: AppColor.of(context)
                                                      .main_color,
                                                  width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      AppDimens.of(context)
                                                          .corner_radius),
                                            )) : Container(),
                                        Container(
                                            padding: EdgeInsets.fromLTRB(
                                                AppDimens.of(context)
                                                    .main_margin_small,
                                                AppDimens.of(context)
                                                    .main_margin_small,
                                                AppDimens.of(context)
                                                    .main_margin_small,
                                                0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  "assets/images/green_theme.png",
                                                  width: AppDimens.of(context)
                                                      .image_width,
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
                                                    alignment:
                                                        AlignmentDirectional
                                                            .centerStart,
                                                    child: Text(
                                                        AppTranslations.of(context)
                                                            .text("green_text"),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                            fontSize:
                                                                AppDimens.of(
                                                                        context)
                                                                    .H1,
                                                            color: AppColor.of(
                                                                    context)
                                                                .white_text,
                                                            fontFamily: 'AU'))),
                                              ],
                                            ))
                                      ],
                                    ))),
                                GestureDetector(
                                    //You need to make my child interactive
                                    onTap: () {
                                      saveInt(1, Constants.of(context).themes);
                                      AppColor.of(context).changeColor(1);
                                      setState(() {
                                        theme = 1;
                                      });
                                    },
                                    child: Container(
                                        child: Stack(
                                      children: [
                                        theme == 1 ? Container(
                                            width:
                                                AppDimens.of(context).box_width,
                                            height: AppDimens.of(context).box_height,
                                            decoration: BoxDecoration(
                                              color: AppColor.of(context)
                                                  .lite_black,
                                              border: Border.all(
                                                  color: AppColor.of(context)
                                                      .main_color,
                                                  width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      AppDimens.of(context)
                                                          .corner_radius),
                                            )) : Container(),
                                        Container(
                                            padding: EdgeInsets.fromLTRB(
                                                AppDimens.of(context)
                                                    .main_margin_small,
                                                AppDimens.of(context)
                                                    .main_margin_small,
                                                AppDimens.of(context)
                                                    .main_margin_small,
                                                0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  "assets/images/blue_theme.png",
                                                  width: AppDimens.of(context)
                                                      .image_width,
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
                                                    alignment:
                                                        AlignmentDirectional
                                                            .centerStart,
                                                    child: Text(
                                                        AppTranslations.of(context)
                                                            .text("blue_text"),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                            fontSize:
                                                                AppDimens.of(
                                                                        context)
                                                                    .H1,
                                                            color: AppColor.of(
                                                                    context)
                                                                .white_text,
                                                            fontFamily: 'AU'))),
                                              ],
                                            ))
                                      ],
                                    ))),
                              ],
                            )),

                                Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin,
                                        AppDimens.of(context).main_margin,
                                        AppDimens.of(context).main_margin,
                                        AppDimens.of(context).main_margin_small),
                                    child: FlatButton(
                                      onPressed: () {
                                        Navigator.of(context).pushAndRemoveUntil(
                                            MaterialPageRoute(builder: (context) => Start(main_index: 3,)),
                                                (Route<dynamic> route) => false);
                                      },
                                      child: Text(
                                          AppTranslations.of(context).text("continue_text"),
                                          style: TextStyle(fontFamily: 'SF',
                                            fontSize: AppDimens.of(context).H2,)),
                                      color: AppColor.of(context).btn_main_color,
                                      padding: EdgeInsets.fromLTRB(
                                          0.0,
                                          AppDimens.of(context).main_margin_small,
                                          0.0,
                                          AppDimens.of(context).main_margin_small),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              AppDimens.of(context).corner_radius)),
                                    ))
                      ])))));
  }

  getTheme() async{
    var number = await getInt(Constants().themes);
    if (number != null) {
      setState(() {
        theme = number;
      });
    }
  }
}
