import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/screens/main/start_screen.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';

class BackUpSetThirdScreen extends StatefulWidget {
  const BackUpSetThirdScreen({Key key}) : super(key: key);

  @override
  _BackUpSetThirdScreenState createState() => _BackUpSetThirdScreenState();
}

class _BackUpSetThirdScreenState extends State<BackUpSetThirdScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool is_done = false;
  String seed_phrase;

  _BackUpSetThirdScreenState();

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
    var all_done =
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
            Widget>[
      Container(
          padding: EdgeInsets.all(AppDimens.of(context).main_margin_small),
          decoration: BoxDecoration(
            color: AppColor.of(context).main_color,
            borderRadius:
                BorderRadius.circular(AppDimens.of(context).corner_radius),
          ),
          margin: EdgeInsets.fromLTRB(
              0.0,
              AppDimens.of(context).top_header_height,
              AppDimens.of(context).main_margin_small,
              AppDimens.of(context).main_margin_small),
          child: Icon(Icons.check,
              color: AppColor.of(context).black_text,
              size: AppDimens.of(context).main_margin_big,)),
      Container(
          margin: EdgeInsets.only(top: AppDimens.of(context).main_margin_midle),
          alignment: AlignmentDirectional.center,
          child: Text(AppTranslations.of(context).text("is_ready_text"),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: AppDimens.of(context).H2,
                  color: AppColor.of(context).white_text,
                  fontFamily: 'SF'))),
      Container(
          margin: EdgeInsets.all(AppDimens.of(context).main_margin_midle),
          alignment: AlignmentDirectional.center,
          child: Text(AppTranslations.of(context).text("backup_sed_text6"),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: AppDimens.of(context).H2,
                  color: AppColor.of(context).white_text.withOpacity(0.6),
                  fontFamily: 'SF'))),
      Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(
              AppDimens.of(context).main_margin,
              0,
              AppDimens.of(context).main_margin,
              AppDimens.of(context).main_margin_small),
          child: FlatButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => Start(main_index: 3,)),
                  (Route<dynamic> route) => false);
            },
            child: Text(AppTranslations.of(context).text("got_acquainted_text"),
                style: TextStyle(
                  fontFamily: 'SF',
                  fontSize: AppDimens.of(context).H2,
                )),
            color: AppColor.of(context).btn_main_color,
            padding: EdgeInsets.fromLTRB(
                0.0,
                AppDimens.of(context).main_margin_small,
                0.0,
                AppDimens.of(context).main_margin_small),
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(AppDimens.of(context).corner_radius)),
          ))
    ]);
    var check_box =
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      Container(
          margin: EdgeInsets.all(AppDimens.of(context).main_margin_midle),
          alignment: AlignmentDirectional.centerStart,
          child: Text(AppTranslations.of(context).text("backup_sed_text8"),
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: AppDimens.of(context).H2,
                  color: AppColor.of(context).white_text,
                  fontFamily: 'SF'))),
      Container(
          padding: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_small,
              0, AppDimens.of(context).main_margin_small, 0.0),
          decoration: BoxDecoration(
            color: AppColor.of(context).grey_field_bg.withOpacity(0.4),
            borderRadius:
                BorderRadius.circular(AppDimens.of(context).corner_radius),
          ),
          margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle, 0,
              AppDimens.of(context).main_margin_midle, 0.0),
          child: Form(
              key: _formKey,
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.all(0.0),
                    hintText:"Word #5",
                    hintStyle: TextStyle(
                      color: AppColor.of(context).white_text.withOpacity(0.6),
                      fontFamily: "SF",
                    )),
                textCapitalization: TextCapitalization.sentences,
                onChanged: (val) {
                  seed_phrase = val;
                },
                keyboardType: TextInputType.text,
                style: TextStyle(
                  color: AppColor.of(context).white_text.withOpacity(0.6),
                  fontFamily: "SF",
                ),
              ))),
      Container(
          margin: EdgeInsets.all(AppDimens.of(context).main_margin_midle),
          alignment: AlignmentDirectional.centerStart,
          child: Text(AppTranslations.of(context).text("backup_sed_text9"),
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: AppDimens.of(context).H2,
                  color: AppColor.of(context).white_text.withOpacity(0.6),
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
              if (seed_phrase != null && seed_phrase.length > 3) {
                _onWillPop();
              } else {
                checkErrorState(
                    context,
                    AppTranslations.of(context).text("error_form"),
                    scaffoldKey);
              }
            },
            child: Text(AppTranslations.of(context).text("next_text"),
                style: TextStyle(
                  fontFamily: 'AU',
                  color: AppColor.of(context).white_text,
                  fontSize: AppDimens.of(context).H3,
                )),
            color: Colors.transparent,
          ))
    ]);
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
                                    "3" +
                                    AppTranslations.of(context)
                                        .text("of_text") +
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
                        is_done ? all_done : check_box
                      ])))));
  }

  _onWillPop() async {
    return (await showDialog(
        context: context,
        builder: (context) =>
            Dialog(
              backgroundColor: AppColor
                  .of(context)
                  .lite_black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppDimens
                          .of(context)
                          .corner_radius))),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.fromLTRB(
                          AppDimens
                              .of(context)
                              .main_margin,
                          AppDimens
                              .of(context)
                              .main_margin,
                          AppDimens
                              .of(context)
                              .main_margin,
                          0),
                      child: Text(
                          AppTranslations.of(context).text(
                              'back_pressed_text1'),
                          style: TextStyle(
                              fontSize: AppDimens
                                  .of(context)
                                  .H1_5,
                              color: AppColor
                                  .of(context)
                                  .white_text))),
                  Container(
                      padding: EdgeInsets.fromLTRB(
                          AppDimens
                              .of(context)
                              .main_margin,
                          AppDimens
                              .of(context)
                              .main_margin_small,
                          AppDimens
                              .of(context)
                              .main_margin,
                          AppDimens
                              .of(context)
                              .main_margin),
                      child: Text(
                          AppTranslations.of(context).text('backup_sed_text7'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColor
                                  .of(context)
                                  .white_text))),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  color: AppColor
                                      .of(context)
                                      .text_grey
                                      .withOpacity(0.3),
                                  width: 0.5,
                                ),
                                top: BorderSide(
                                  color: AppColor
                                      .of(context)
                                      .text_grey
                                      .withOpacity(0.3),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: FlatButton(
                                onPressed: () =>
                                    Navigator.of(context).pop(false),
                                child: Container(
                                    child: Center(
                                      child: Text(
                                        AppTranslations.of(context).text(
                                            'no_text'),
                                        style: TextStyle(
                                            fontSize: AppDimens
                                                .of(context)
                                                .H2,
                                            color: AppColor
                                                .of(context)
                                                .main_text_color),
                                      ),
                                    ))))),

                        Expanded(child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                  color: AppColor
                                      .of(context)
                                      .text_grey
                                      .withOpacity(0.3),
                                  width: 0.5,
                                ),
                                top: BorderSide(
                                  color: AppColor
                                      .of(context)
                                      .text_grey
                                      .withOpacity(0.3),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  setState(() {
                                    is_done = true;
                                  });
//                deleteSharedData(Constants().a);
                                },
                                child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                        AppDimens
                                            .of(context)
                                            .main_margin,
                                        AppDimens
                                            .of(context)
                                            .main_margin_small,
                                        AppDimens
                                            .of(context)
                                            .main_margin,
                                        AppDimens
                                            .of(context)
                                            .main_margin_small),
                                    child: Center(
                                        child: Text(
                                            AppTranslations.of(context)
                                                .text('yes_text'),
                                            style: TextStyle(
                                                fontSize: AppDimens
                                                    .of(context)
                                                    .H2,
                                                color: AppColor
                                                    .of(context)
                                                    .main_text_color))))))),
                      ])
                ],
              ),
            )));
  }
}
