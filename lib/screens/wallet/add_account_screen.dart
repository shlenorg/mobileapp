
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';

class AddAccountScreen extends StatefulWidget {

  const AddAccountScreen({Key key}) : super(key: key);

  @override
  _AddAccountScreenState createState() => _AddAccountScreenState();
}

class _AddAccountScreenState extends State<AddAccountScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String user_name;
  String passwd;
  bool _passwordVisible = false;
  String color;
  List<String> tables = [];

  List<DropdownMenuItem<String>> _dropdownMenuItems;
  _AddAccountScreenState();

  @override
  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(tables);
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
                        child: Column(
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
                                          .text("create_account_text"),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: AppDimens.of(context).H1,
                                          color: AppColor.of(context).white_text,
                                          fontFamily: 'AU'))),


                              Container(
                                  margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle,
                                      AppDimens.of(context).main_margin_midle, AppDimens.of(context).main_margin_midle, 0.0),
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Text(AppTranslations.of(context).text("password_text"),
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: AppDimens.of(context).H2,
                                          color: AppColor.of(context).white_text,
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
                                      AppDimens.of(context).main_margin_midle),
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
                                  margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle,
                                      AppDimens.of(context).main_margin_small, AppDimens.of(context).main_margin_midle, 0.0),
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Text(AppTranslations.of(context).text("account_name_text"),
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
                                        hintText:"Account1",
                                        hintStyle: TextStyle(
                                          color: AppColor.of(context).white_text.withOpacity(0.6),
                                          fontFamily: "SF",
                                        )),
                                    textCapitalization: TextCapitalization.sentences,
                                    onChanged: (val) {
                                      user_name = val;
                                    },
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(
                                      color: AppColor.of(context).white_text.withOpacity(0.6),
                                      fontFamily: "SF",
                                    ),
                                  )),



                              Container(
                                  margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle,
                                      AppDimens.of(context).main_margin, AppDimens.of(context).main_margin_midle, 0.0),
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Text(AppTranslations.of(context).text("account_color_text"),
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: AppDimens.of(context).H2,
                                          color: AppColor.of(context).white_text,
                                          fontFamily: 'SF'))),

            GestureDetector(
              //You need to make my child interactive
                onTap: () {
                  inDeveloping(scaffoldKey);
                  // _logOut();
                },
                child: Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  padding: EdgeInsets.fromLTRB(
                                      0.0,
                                      AppDimens.of(context).main_margin_small,
                                      0.0,
                                      AppDimens.of(context).main_margin_small),
                                  margin: EdgeInsets.fromLTRB(
                                      AppDimens.of(context).main_margin_midle,
                                      0,
                                      AppDimens.of(context).main_margin_midle,
                                      0.0),
                                  child: Container(
                                                      width: double.infinity,
                                                        height: AppDimens.of(context).icon_plus_height,
                                                        padding: EdgeInsets.fromLTRB(
                                                            AppDimens.of(context)
                                                                .main_margin_small,
                                                            0.0,
                                                            AppDimens.of(context)
                                                                .main_margin_small,
                                                            0.0),
                                                        decoration: BoxDecoration(
                                                          color: AppColor.of(context).blue,
                                                          borderRadius:
                                                          BorderRadius.circular(AppDimens.of(context).corner_radius),
                                                        ),
                                                        child: DropdownButtonHideUnderline(
                                                            child: DropdownButton<String>(
                                                              items: _dropdownMenuItems,
                                                              onChanged: (value) {
                                                                setState(() {
                                                                  color = value;
                                                                });
                                                              },
                                                              value: color,
                                                            ))),
                                   )),

                              Container(
                                  margin: EdgeInsets.fromLTRB(
                                      AppDimens.of(context).main_margin,
                                      0,
                                      AppDimens.of(context).main_margin_small,
                                      AppDimens.of(context).main_margin_small),
                                  alignment: AlignmentDirectional.centerEnd,
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                        AppTranslations.of(context)
                                            .text("create_account_text") + " >",
                                        style: TextStyle(
                                          fontFamily: 'AU',
                                          color: AppColor.of(context)
                                              .white_text,
                                          fontSize: AppDimens.of(context).H3,
                                        )),
                                    color: Colors.transparent,
                                  ))
                    ])))));
  }

  List<DropdownMenuItem<String>> buildDropDownMenuItems(
      List<String> listItems) {
    List<DropdownMenuItem<String>> items = List();
    for (String listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem,
              style: TextStyle(
                  fontFamily: "SF",
                  color: AppColor().dark_grey_text,
                  fontWeight: FontWeight.bold)),
          value: listItem,
        ),
      );
    }
    return items;
  }
}
