import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/screens/main/start_screen.dart';
import 'package:shlen/utils/dimens.dart';

class EnterKeyScreen extends StatefulWidget {
  const EnterKeyScreen({Key key}) : super(key: key);

  @override
  _EnterKeyScreenState createState() => _EnterKeyScreenState();
}

class _EnterKeyScreenState extends State<EnterKeyScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String photo;
  String passwd;
  bool approve_select = false;
  bool _passwordVisible = false;

  _EnterKeyScreenState();

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
              backgroundColor: Colors.transparent,
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
                  ])),
          backgroundColor: Colors.transparent,
          key: scaffoldKey,
          body: Builder(
              builder: (context) => Container(
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                        Container(
                            child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    AppDimens.of(context).main_margin_midle,
                                    AppDimens.of(context).main_margin_vbig,
                                    AppDimens.of(context).main_margin_midle,
                                    AppDimens.of(context).main_margin_small),
                                child: Center(
                                    child: Container(
                                        margin: EdgeInsets.only(
                                            top: AppDimens.of(context)
                                                .main_margin_small),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        width: AppDimens.of(
                                                                context)
                                                            .icon_plus_height,
                                                        height: AppDimens.of(
                                                                context)
                                                            .icon_plus_height,
                                                        decoration:
                                                            BoxDecoration(
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
                                                                .circular(AppDimens.of(
                                                                        context)
                                                                    .main_margin_midle),
                                                            child:
                                                                photo != "" &&
                                                                        photo !=
                                                                            null
                                                                    ? Image
                                                                        .network(
                                                                        photo,
                                                                        width: AppDimens.of(context)
                                                                            .H1,
                                                                        height:
                                                                            AppDimens.of(context).H1,
                                                                      )
                                                                    : Stack(
                                                                        alignment:
                                                                            AlignmentDirectional.center,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.person,
                                                                            color:
                                                                                AppColor.of(context).white_text,
                                                                            size:
                                                                                AppDimens.of(context).H0,
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
                                                                  top: AppDimens.of(
                                                                          context)
                                                                      .main_margin_midle),
                                                              child: Text(
                                                                  "Wary Velvety Beagle",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          AppDimens.of(context)
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
                                    AppDimens.of(context).main_margin_midle,
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
                                            color:
                                                AppColor.of(context).text_grey),
                                        onPressed: () {
                                          setState(() {
                                            _passwordVisible =
                                                !_passwordVisible;
                                          });
                                        },
                                      ),
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.fromLTRB(
                                          AppDimens.of(context)
                                              .main_margin_small,
                                          AppDimens.of(context).H2,
                                          AppDimens.of(context)
                                              .main_margin_small,
                                          0.0),
                                      hintText: AppTranslations.of(context)
                                          .text("ps_text8"),
                                      hintStyle: TextStyle(
                                        color: AppColor.of(context)
                                            .white_text
                                            .withOpacity(0.6),
                                        fontFamily: "SF",
                                      )),
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  onChanged: (val) {
                                    setState(() {
                                      passwd = val;
                                    });
                                  },
                                  keyboardType: TextInputType.text,
                                  keyboardAppearance: Brightness.dark,
                                  style: TextStyle(
                                    color: AppColor.of(context)
                                        .white_text
                                        .withOpacity(0.6),
                                    fontFamily: "SF",
                                  ),
                                ))),
                            Container(
                                width: double.infinity,
                                alignment: AlignmentDirectional.centerStart,
                                margin: EdgeInsets.fromLTRB(
                                    AppDimens.of(context).main_margin_small,
                                    0,
                                    AppDimens.of(context).main_margin,
                                    0),
                                child: Row(children: [
                                  Checkbox(
                                      value: approve_select,
                                      tristate: false,
                                      checkColor:
                                          AppColor.of(context).white_text,
                                      onChanged: (value) {
                                        setState(() {
                                          approve_select = value;
                                        });
                                      }),
                                  Text(
                                      AppTranslations.of(context)
                                          .text("save_password_text"),
                                      style: TextStyle(
                                        fontFamily: 'SF',
                                        fontSize: AppDimens.of(context).H2,
                                        color: AppColor.of(context)
                                            .white_text
                                            .withOpacity(0.6),
                                      )),
                                ])),
                            Container(
                                width: double.infinity,
                                margin: EdgeInsets.fromLTRB(
                                    AppDimens.of(context).main_margin_midle,
                                    AppDimens.of(context).main_margin_midle,
                                    AppDimens.of(context).main_margin_midle,
                                    AppDimens.of(context).main_margin_small),
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                            builder: (context) => Start(
                                                  main_index: 0,
                                                )),
                                        (Route<dynamic> route) => false);
                                  },
                                  child: Text(
                                      AppTranslations.of(context)
                                          .text("continue_text"),
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
                                )),
                          ],
                        )),
                        SizedBox(
                          height: 210,
                        ),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                  AppDimens.of(context).main_margin_midle,
                                  AppDimens.of(context).main_margin_small,
                                  AppDimens.of(context).main_margin_midle,
                                  0,
                                ),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: AppColor.of(context).white_text,
                                      width: 2.0,
                                    ),
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    AppDimens.of(context).main_margin_midle,
                                    AppDimens.of(context).main_margin_small,
                                    AppDimens.of(context).main_margin_midle,
                                    0.0),
                                alignment: AlignmentDirectional.center,
                                child: Text(
                                    AppTranslations.of(context)
                                        .text("existing_keys_text"),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: AppDimens.of(context).H3,
                                        color: AppColor.of(context).white_text,
                                        fontFamily: 'AU'))),
                          ],
                        )
                      ])))));
  }
}
