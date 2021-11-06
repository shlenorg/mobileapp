import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/screens/account/backup_set_second_screen.dart';
import 'package:shlen/utils/dimens.dart';

class BackUpSetScreen extends StatefulWidget {
  const BackUpSetScreen({Key key}) : super(key: key);

  @override
  _BackUpSetScreenState createState() => _BackUpSetScreenState();
}

class _BackUpSetScreenState extends State<BackUpSetScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  _BackUpSetScreenState();

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
                              AppTranslations.of(context)
                                  .text("step_text") + "1" + AppTranslations.of(context)
                                  .text("of_text") + "3",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: AppDimens.of(context).H2,
                                  color: AppColor.of(context)
                                      .white_text
                                      .withOpacity(0.6),
                                  fontFamily: 'SF'))),
                      Container(
                          margin: EdgeInsets.fromLTRB(
                            AppDimens.of(context).main_margin_midle,
                            AppDimens.of(context).main_margin_midle,
                            AppDimens.of(context).main_margin_midle,
                            0,
                          ),
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
                                  margin: EdgeInsets.fromLTRB(
                                    AppDimens.of(context).main_margin_midle,
                                    AppDimens.of(context).main_margin_vbig,
                                    AppDimens.of(context).main_margin_midle,
                                    0,
                                  ),
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                      AppTranslations.of(context)
                                          .text("backup_sed_text2"),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: AppDimens.of(context).H2,
                                          color: AppColor.of(context)
                                              .white_text,
                                          fontFamily: 'SF'))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(
                                    AppDimens.of(context).main_margin_midle,
                                    AppDimens.of(context).main_margin,
                                    AppDimens.of(context).main_margin_midle,
                                    0,
                                  ),
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                      AppTranslations.of(context)
                                          .text("backup_sed_text3"),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: AppDimens.of(context).H2,
                                          color: AppColor.of(context)
                                              .white_text
                                              .withOpacity(0.6),
                                          fontFamily: 'SF'))),
                              Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.fromLTRB(
                                      AppDimens.of(context).main_margin,
                                      AppDimens.of(context).main_margin,
                                      AppDimens.of(context).main_margin,
                                      AppDimens.of(context).main_margin_small),
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BackUpSetSecondScreen()));

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
}
