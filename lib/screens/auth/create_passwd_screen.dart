
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/screens/auth/boarding_notif_screen.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';

class CreatePasswdScreen extends StatefulWidget {

  const CreatePasswdScreen({Key key}) : super(key: key);

  @override
  _CreatePasswdScreenState createState() => _CreatePasswdScreenState();
}

class _CreatePasswdScreenState extends State<CreatePasswdScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String photo;
  String passwd;
  String passwd1;
  bool _passwordVisible = false;
  bool _passwordVisible1 = false;

  _CreatePasswdScreenState();

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

    var enter_text = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: EdgeInsets.fromLTRB(
                  AppDimens.of(context).main_margin,
                  AppDimens.of(context).image_width,
                  AppDimens.of(context).main_margin,
                  0.0),
              child: Text(AppTranslations.of(context).text("create_password_text"),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: AppDimens.of(context).H1,
                      fontFamily: 'AU',
                      color: AppColor.of(context).white_text))),
          Container(
              padding: EdgeInsets.fromLTRB(
                  AppDimens.of(context).main_margin_small,
                  0,
                  AppDimens.of(context).main_margin_small,
                  0.0),
              decoration: BoxDecoration(
                color: AppColor.of(context)
                    .grey_field_bg
                    .withOpacity(0.4),
                borderRadius: BorderRadius.circular(
                    AppDimens.of(context).corner_radius),
              ),
    margin: EdgeInsets.fromLTRB(
    AppDimens.of(context).main_margin_midle,
    AppDimens.of(context).main_margin,
    AppDimens.of(context).main_margin_midle,
    0.0),
              child: Form(
                  child: TextFormField(
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: AppColor.of(context).text_grey),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(
                            AppDimens.of(context).main_margin_small,
                            AppDimens.of(context).H2,
                            AppDimens.of(context).main_margin_small,
                            0.0),
                        hintText: AppTranslations.of(context)
                            .text("ps_text8"),
                        hintStyle: TextStyle(
                          color: AppColor.of(context)
                              .white_text
                              .withOpacity(0.6),
                          fontFamily: "SF",
                        )),
                    textCapitalization: TextCapitalization.sentences,
                    onChanged: (val) {
                      setState(() {
                        passwd = val;
                      });
                    },
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: AppColor.of(context)
                          .white_text
                          .withOpacity(0.6),
                      fontFamily: "SF",
                    ),
                  ))),
          Container(
              padding: EdgeInsets.fromLTRB(
                  AppDimens.of(context).main_margin_small,
                  0,
                  AppDimens.of(context).main_margin_small,
                  0.0),
              decoration: BoxDecoration(
                color: AppColor.of(context)
                    .grey_field_bg
                    .withOpacity(0.4),
                borderRadius: BorderRadius.circular(
                    AppDimens.of(context).corner_radius),
              ),
              margin: EdgeInsets.all(
                  AppDimens.of(context).main_margin_midle),
              child: Form(
                  child: TextFormField(
                    obscureText: !_passwordVisible1,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                              _passwordVisible1
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: AppColor.of(context).text_grey),
                          onPressed: () {
                            setState(() {
                              _passwordVisible1 = !_passwordVisible1;
                            });
                          },
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(
                            AppDimens.of(context).main_margin_small,
                            AppDimens.of(context).H2,
                            AppDimens.of(context).main_margin_small,
                            0.0),
                        hintText: AppTranslations.of(context)
                            .text("ps_text10"),
                        hintStyle: TextStyle(
                          color: AppColor.of(context)
                              .white_text
                              .withOpacity(0.6),
                          fontFamily: "SF",
                        )),
                    textCapitalization: TextCapitalization.sentences,
                    onChanged: (val) {
                      setState(() {
                        passwd1 = val;
                      });
                    },
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: AppColor.of(context)
                          .white_text
                          .withOpacity(0.6),
                      fontFamily: "SF",
                    ),
                  ))),
          Container(
              margin: EdgeInsets.fromLTRB(
                  AppDimens.of(context).main_margin,
                  AppDimens.of(context).main_margin_small,
                  AppDimens.of(context).main_margin,
                  0.0),
              child: Text(AppTranslations.of(context).text("create_password_text1"),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: AppDimens.of(context).H3,
                      fontFamily: 'SF',
                      color: AppColor.of(context).text_grey.withOpacity(0.6)))),
          Container(
              margin: EdgeInsets.fromLTRB(
                  AppDimens.of(context).main_margin,
                  0,
                  AppDimens.of(context).main_margin_small,
                  AppDimens.of(context).main_margin_small),
              alignment: AlignmentDirectional.centerEnd,
              child: FlatButton(
                onPressed: () {
                  if(passwd != null && passwd.isNotEmpty) {
                    if (passwd.toString() != passwd1.toString()) {
                      checkErrorState(
                          context,
                          AppTranslations.of(context).text("ps_text11"),
                          scaffoldKey);
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BoardingNotifScreen()));
                    }
                  } else {
                    checkErrorState(
                        context,
                        AppTranslations.of(context).text("error_form"),
                        scaffoldKey);
                  }
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

        ]);
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.share, color: Colors.transparent),
                  onPressed: (){

                  }),
            ],
            automaticallyImplyLeading: false,
            titleSpacing: 0,
            // Don't show the leading button
            title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FlatButton(
                    padding: EdgeInsets.only(left: 0),
                    child: Text(AppTranslations.of(context).text("back_text"),
                        textAlign: TextAlign.start,
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
                          crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              enter_text,
                    ])))));
  }
}
