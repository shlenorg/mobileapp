
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/utils/dimens.dart';

class AddCustomTokenScreen extends StatefulWidget {

  const AddCustomTokenScreen({Key key}) : super(key: key);

  @override
  _AddCustomTokenScreenState createState() => _AddCustomTokenScreenState();
}

class _AddCustomTokenScreenState extends State<AddCustomTokenScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String address;
  String name;
  String symbol;
  String number;

  _AddCustomTokenScreenState();

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
                ])),
        backgroundColor: Colors.transparent,
        key: scaffoldKey,
        body: Builder(
            builder: (context) => Container(
                    child: SingleChildScrollView(
                        child: Form(
    key: _formKey,
    child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(
                                      top:
                                      AppDimens.of(context).main_margin_vbig),
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                      AppTranslations.of(context)
                                          .text("add_custom_token_text"),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: AppDimens.of(context).H1,
                                          color: AppColor.of(context).white_text,
                                          fontFamily: 'AU'))),

                              Container(
                                  margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle,
                                      AppDimens.of(context).main_margin_midle, AppDimens.of(context).main_margin_midle, 0.0),
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Text(AppTranslations.of(context).text("contact_address_text"),
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
                                  margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle, AppDimens.of(context).main_margin_small,
                                      AppDimens.of(context).main_margin_midle, 0.0),
                                  child: TextFormField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            contentPadding: EdgeInsets.all(0.0),
                                            hintText:AppTranslations.of(context).text("contact_address_text"),
                                            hintStyle: TextStyle(
                                              color: AppColor.of(context).white_text.withOpacity(0.6),
                                              fontFamily: "SF",
                                            )),
                                        textCapitalization: TextCapitalization.sentences,
                                        onChanged: (val) {
                                          address = val;
                                        },
                                        keyboardType: TextInputType.text,
                                        style: TextStyle(
                                          color: AppColor.of(context).white_text.withOpacity(0.6),
                                          fontFamily: "SF",
                                        ),
                                      )),
                              Container(
                                  margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle,
                                      AppDimens.of(context).main_margin_midle, AppDimens.of(context).main_margin_midle, 0.0),
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Text(AppTranslations.of(context).text("name_text"),
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
                                  margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle, AppDimens.of(context).main_margin_small,
                                      AppDimens.of(context).main_margin_midle, 0.0),
                                  child: TextFormField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            contentPadding: EdgeInsets.all(0.0),
                                            hintText:AppTranslations.of(context).text("your_token_name_text"),
                                            hintStyle: TextStyle(
                                              color: AppColor.of(context).white_text.withOpacity(0.6),
                                              fontFamily: "SF",
                                            )),
                                        textCapitalization: TextCapitalization.sentences,
                                        onChanged: (val) {
                                          address = val;
                                        },
                                        keyboardType: TextInputType.text,
                                        style: TextStyle(
                                          color: AppColor.of(context).white_text.withOpacity(0.6),
                                          fontFamily: "SF",
                                        ),
                                      )),
                              Container(
                                  margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle,
                                      AppDimens.of(context).main_margin_midle, AppDimens.of(context).main_margin_midle, 0.0),
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Text(AppTranslations.of(context).text("symbol_text"),
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
                                  margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle, AppDimens.of(context).main_margin_small,
                                      AppDimens.of(context).main_margin_midle, 0.0),
                                  child: TextFormField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            contentPadding: EdgeInsets.all(0.0),
                                            hintText:"ABC",
                                            hintStyle: TextStyle(
                                              color: AppColor.of(context).white_text.withOpacity(0.6),
                                              fontFamily: "SF",
                                            )),
                                        textCapitalization: TextCapitalization.sentences,
                                        onChanged: (val) {
                                          address = val;
                                        },
                                        keyboardType: TextInputType.text,
                                        style: TextStyle(
                                          color: AppColor.of(context).white_text.withOpacity(0.6),
                                          fontFamily: "SF",
                                        ),
                                      )),
                              Container(
                                  margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle,
                                      AppDimens.of(context).main_margin_midle, AppDimens.of(context).main_margin_midle, 0.0),
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Text(AppTranslations.of(context).text("number_decimal_places_text"),
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
                                  margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle, AppDimens.of(context).main_margin_small,
                                      AppDimens.of(context).main_margin_midle, 0.0),
                                  child: TextFormField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            contentPadding: EdgeInsets.all(0.0),
                                            hintText:"18",
                                            hintStyle: TextStyle(
                                              color: AppColor.of(context).white_text.withOpacity(0.6),
                                              fontFamily: "SF",
                                            )),
                                        textCapitalization: TextCapitalization.sentences,
                                        onChanged: (val) {
                                          address = val;
                                        },
                                        keyboardType: TextInputType.text,
                                        style: TextStyle(
                                          color: AppColor.of(context).white_text.withOpacity(0.6),
                                          fontFamily: "SF",
                                        ),
                                      )),

                              Container(
                                  margin: EdgeInsets.fromLTRB(
                                      AppDimens.of(context).main_margin,
                                      0,
                                      0,
                                      AppDimens.of(context).main_margin_small),
                                  alignment: AlignmentDirectional.centerEnd,
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
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
                    ]))))));
  }
}
