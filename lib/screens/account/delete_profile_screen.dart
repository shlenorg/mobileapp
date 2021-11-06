import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';

class DeleteProfileScreen extends StatefulWidget {
  const DeleteProfileScreen({Key key}) : super(key: key);

  @override
  _DeleteProfileScreenState createState() => _DeleteProfileScreenState();
}

class _DeleteProfileScreenState extends State<DeleteProfileScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String photo;
  String passwd;
  bool _passwordVisible = false;

  _DeleteProfileScreenState();

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
                        Container(
                            margin: EdgeInsets.only(
                                top: AppDimens.of(context).main_margin_vbig),
                            alignment: AlignmentDirectional.center,
                            child: Text(
                                AppTranslations.of(context).text("ps_text7"),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: AppDimens.of(context).H1,
                                    color: AppColor.of(context).white_text,
                                    fontFamily: 'AU'))),
                        Container(
                            padding: EdgeInsets.only(
                                top: AppDimens.of(context).main_margin_small),
                            margin: EdgeInsets.fromLTRB(
                                AppDimens.of(context).main_margin,
                                AppDimens.of(context).main_margin,
                                0,
                                0),
                            child: Center(
                                child: Container(
                                    margin: EdgeInsets.only(
                                        top: AppDimens.of(context)
                                            .main_margin_small),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                    width: AppDimens.of(context)
                                                        .icon_logo_height,
                                                    height:
                                                        AppDimens.of(context)
                                                            .icon_logo_height,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: AppColor.of(
                                                                  context)
                                                              .white_text,
                                                          width: 1),
                                                      borderRadius: BorderRadius
                                                          .circular(AppDimens
                                                                  .of(context)
                                                              .main_margin_small),
                                                    ),
                                                    margin: EdgeInsets.fromLTRB(
                                                        0.0,
                                                        0.0,
                                                        AppDimens.of(context)
                                                            .main_margin_small,
                                                        0.0),
                                                    child: ClipRRect(
                                                        borderRadius: BorderRadius
                                                            .circular(AppDimens
                                                                    .of(context)
                                                                .main_margin_midle),
                                                        child:
                                                            photo != "" &&
                                                                    photo !=
                                                                        null
                                                                ? Image.network(
                                                                    photo,
                                                                    width: AppDimens.of(
                                                                            context)
                                                                        .H1,
                                                                    height:
                                                                        AppDimens.of(context)
                                                                            .H1,
                                                                  )
                                                                : Stack(
                                                                    alignment:
                                                                        AlignmentDirectional
                                                                            .center,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .person,
                                                                        color: AppColor.of(context)
                                                                            .white_text,
                                                                        size: AppDimens.of(context)
                                                                            .H0,
                                                                      )
                                                                    ],
                                                                  ))),
                                                Container(
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              bottom: AppDimens
                                                                      .of(
                                                                          context)
                                                                  .main_margin_small),
                                                          child: Text(
                                                              "Wary Velvety Beagle",
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      AppDimens.of(
                                                                              context)
                                                                          .H3,
                                                                  fontFamily:
                                                                      'AU',
                                                                  color: AppColor.of(
                                                                          context)
                                                                      .white_text))),
                                                    ])),
                                              ]),
                                        ])))),


                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        AppDimens.of(context)
                                            .main_margin_midle,
                                        AppDimens.of(context)
                                            .main_margin,
                                        AppDimens.of(context)
                                            .main_margin_midle,
                                        AppDimens.of(context)
                                            .main_margin_midle),
                                    alignment: AlignmentDirectional.center,
                                    child: Text(AppTranslations.of(context).text("ps_text9"),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: AppDimens.of(context).H2,
                                            color: AppColor.of(context).red,
                                            fontFamily: 'SF'))),
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
                                AppDimens.of(context).main_margin),
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
                                      AppDimens.of(context).main_margin_midle,
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
                            width: double.infinity,
                            margin: EdgeInsets.fromLTRB(
                                AppDimens.of(context).main_margin,
                                0,
                                AppDimens.of(context).main_margin,
                                AppDimens.of(context).main_margin_small),
                            child: FlatButton(
                              onPressed: () {
                                inDeveloping(scaffoldKey);
                              },
                              child: Text(
                                  AppTranslations.of(context)
                                      .text("ps_text7"),
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
                                  borderRadius: BorderRadius.circular(
                                      AppDimens.of(context).corner_radius)),
                            ))
                      ])))));
  }
}
