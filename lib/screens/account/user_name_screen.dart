import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';

class UserNameScreen extends StatefulWidget {
  const UserNameScreen({Key key}) : super(key: key);

  @override
  _UserNameScreenState createState() => _UserNameScreenState();
}

class _UserNameScreenState extends State<UserNameScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool have_name = false;
  String user_name = "";
  bool approve_select = false;

  _UserNameScreenState();

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
    var name_exist_box = Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Column(children: [
          Container(
              padding: EdgeInsets.all(AppDimens.of(context).main_margin_small),
              decoration: BoxDecoration(
                color: AppColor.of(context).main_color,
                borderRadius:
                    BorderRadius.circular(AppDimens.of(context).corner_radius),
              ),
              margin: EdgeInsets.fromLTRB(
                  0.0,
                  AppDimens.of(context).main_margin_vbig,
                  AppDimens.of(context).main_margin_small,
                  0),
              child: SvgPicture.asset("assets/images/ens_icon.svg",
                  color: AppColor.of(context).black_text,
                  width: AppDimens.of(context).main_margin_big,
                  height: AppDimens.of(context).main_margin_big)),

          Container(
            width: double.infinity,
            alignment: AlignmentDirectional.center,
            margin: EdgeInsets.fromLTRB(
              0.0,
              AppDimens.of(context).main_margin_small,
              AppDimens.of(context).main_margin_small,
              0),
            child:  Text(user_name,
              style: TextStyle(fontFamily: 'SF',
                fontSize: AppDimens.of(context).H0,
                color: AppColor.of(context).white_text,
              )),
          ),

          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                  color: AppColor.of(context).text_grey.withOpacity(0.6),
                  width: 1),
              borderRadius:
              BorderRadius.circular(AppDimens.of(context).corner_radius),
            ),
            margin: EdgeInsets.fromLTRB(
                AppDimens.of(context).main_margin,
                AppDimens.of(context).main_margin_small,
                AppDimens.of(context).main_margin,
                0),
            padding: EdgeInsets.all(AppDimens.of(context).main_margin_small),
            child:
                Text(AppTranslations.of(context).text("user_name_text1"),
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: AppDimens.of(context).H4,
                        fontFamily: 'SF',
                        color: AppColor.of(context).text_grey.withOpacity(0.6))),
          ),

          Container(
            width: double.infinity,
            alignment: AlignmentDirectional.centerStart,
            margin: EdgeInsets.fromLTRB(
                AppDimens.of(context).main_margin,
                AppDimens.of(context).main_margin_small,
                AppDimens.of(context).main_margin,
                0),
            child: Text(AppTranslations.of(context).text("ens_text14"),
                style: TextStyle(fontFamily: 'SF',
                  fontSize: AppDimens.of(context).H2,
                  color: AppColor.of(context).white_text,
                )),
          ),

          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                  color: AppColor.of(context).text_grey.withOpacity(0.6),
                  width: 1),
              borderRadius:
              BorderRadius.circular(AppDimens.of(context).corner_radius),
            ),
            margin: EdgeInsets.fromLTRB(
                AppDimens.of(context).main_margin,
                AppDimens.of(context).main_margin_small,
                AppDimens.of(context).main_margin,
                0),
            padding: EdgeInsets.all(AppDimens.of(context).main_margin_small),
            child:
            Text("0xrkgvnrlnwrdgnvrdn434k3leggftb5gb652f6gb256fb4fg6b46g41b6fg4b6f4",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: AppDimens.of(context).H4,
                    fontFamily: 'SF',
                    color: AppColor.of(context).text_grey.withOpacity(0.6))),
          ),

          Container(
            width: double.infinity,
            alignment: AlignmentDirectional.centerStart,
            margin: EdgeInsets.fromLTRB(
                AppDimens.of(context).main_margin,
                AppDimens.of(context).main_margin_small,
                AppDimens.of(context).main_margin,
                0),
            child: Text(AppTranslations.of(context).text("key_text"),
                style: TextStyle(fontFamily: 'SF',
                  fontSize: AppDimens.of(context).H2,
                  color: AppColor.of(context).white_text,
                )),
          ),

          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                  color: AppColor.of(context).text_grey.withOpacity(0.6),
                  width: 1),
              borderRadius:
              BorderRadius.circular(AppDimens.of(context).corner_radius),
            ),
            margin: EdgeInsets.fromLTRB(
                AppDimens.of(context).main_margin,
                AppDimens.of(context).main_margin_small,
                AppDimens.of(context).main_margin,
                0),
            padding: EdgeInsets.all(AppDimens.of(context).main_margin_small),
            child:
            Text("0xrkgvnrlnwrdgnrdn434k3leggftb5gb652f6gb25f4fg6b46g41b6fg4b6f40xrkgvnrlnwrdgnvrdn434k3leggftb5gb652f6gb256fb4fg6b46g41b6fg4b6f40xrkgvnrlnwrdgnvrdn434k",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: AppDimens.of(context).H4,
                    fontFamily: 'SF',
                    color: AppColor.of(context).text_grey.withOpacity(0.6))),
          ),

          Container(
            width: double.infinity,
            alignment: AlignmentDirectional.centerStart,
            margin: EdgeInsets.fromLTRB(
                AppDimens.of(context).H2,
                AppDimens.of(context).main_margin_small,
                AppDimens.of(context).main_margin,
                0),
            child: Row(children: [
              Checkbox(
                  value: approve_select,
                  tristate: false,
                  checkColor: AppColor.of(context).white_text,
                  onChanged: (value) {
                    setState(() {
                      approve_select = value;
                    });
                  }),
              Text(AppTranslations.of(context).text("agree_text"),
                  style: TextStyle(fontFamily: 'SF',
                    fontSize: AppDimens.of(context).H2,
                    color: AppColor.of(context).white_text.withOpacity(0.6),
                  )),

              GestureDetector(
                onTap: () {
                  inDeveloping(scaffoldKey);
                },
                child:Text(AppTranslations.of(context).text("terms_text"),
                  style: TextStyle(fontFamily: 'SF',
                    decoration: TextDecoration.underline,
                    fontSize: AppDimens.of(context).H2,
                    color: AppColor.of(context).main_color,
                  ))),
    ],)
          ),
          SizedBox.fromSize(
            size: Size(AppDimens.of(context).main_margin, MediaQuery.of(context).size.height / 5),
          )
        ]),
        Container(
          width: double.infinity,
          color: AppColor.of(context).main_color.withOpacity(0.2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Padding(
            padding: EdgeInsets.only(left:  AppDimens.of(context).main_margin_midle),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("10 SNT",
                  style: TextStyle(fontFamily: 'SF',
                    fontSize: AppDimens.of(context).H0,
                    color: AppColor.of(context).white_text,
                  )),
              Text(
                  AppTranslations.of(context).text("deposit_form"),
                  style: TextStyle(fontFamily: 'SF',
                    fontSize: AppDimens.of(context).H2,
                    color: AppColor.of(context).white_text.withOpacity(0.6),
                  ))
          ],)),

            Container(
                margin: EdgeInsets.fromLTRB(
                    AppDimens.of(context).main_margin,
    AppDimens.of(context).main_margin_small,
                    AppDimens.of(context).main_margin,
                    AppDimens.of(context).main_margin_small),
                child: FlatButton(
                  onPressed: () {
                    inDeveloping(scaffoldKey);
                  },
                  child: Text(
                      AppTranslations.of(context).text("not_enough_form"),
                      style: TextStyle(fontFamily: 'SF',
                        fontSize: AppDimens.of(context).H2,)),
                  color: AppColor.of(context).btn_main_color,
                  padding: EdgeInsets.fromLTRB(
                      AppDimens.of(context).main_margin,
                      AppDimens.of(context).main_margin_small,
                      AppDimens.of(context).main_margin,
                      AppDimens.of(context).main_margin_small),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          AppDimens.of(context).corner_radius)),
                ))
        ],),)
      ],
    );
    var enter_name_part = Column(
      children: [
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
            child: SvgPicture.asset("assets/images/ens_icon.svg",
                color: AppColor.of(context).black_text,
                width: AppDimens.of(context).main_margin_big,
                height: AppDimens.of(context).main_margin_big)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: MediaQuery.of(context).size.width / 1.6,
                padding: EdgeInsets.fromLTRB(
                    AppDimens.of(context).main_margin_small,
                    0,
                    AppDimens.of(context).main_margin_small,
                    0.0),
                decoration: BoxDecoration(
                  color: AppColor.of(context).grey_field_bg.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(
                      AppDimens.of(context).corner_radius),
                ),
                margin: EdgeInsets.fromLTRB(
                    0,
                    AppDimens.of(context).main_margin,
                    AppDimens.of(context).main_margin,
                    0.0),
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
                          hintText: AppTranslations.of(context)
                              .text("user_name_hint_text"),
                          hintStyle: TextStyle(
                            color: AppColor.of(context)
                                .white_text
                                .withOpacity(0.6),
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
                    ))),
            GestureDetector(
                onTap: () {
                  if (user_name != null && user_name.length > 3) {
                    setState(() {
                      have_name = true;
                    });
                  } else {
                    checkErrorState(
                        context,
                        AppTranslations.of(context).text("error_form"),
                        scaffoldKey);
                  }
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(
                        0, AppDimens.of(context).main_margin, 0, 0.0),
                    padding:
                        EdgeInsets.all(AppDimens.of(context).main_margin_small),
                    decoration: BoxDecoration(
                      color: AppColor.of(context).main_color,
                      borderRadius: BorderRadius.circular(
                          AppDimens.of(context).btn_corner_radius),
                    ),
                    child: SvgPicture.asset(
                        "assets/images/send_message_icon.svg",
                        color: AppColor.of(context).black_text,
                        width: AppDimens.of(context).main_margin_midle,
                        height: AppDimens.of(context).main_margin_midle)))
          ],
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: AppColor.of(context).text_grey.withOpacity(0.6),
                width: 1),
            borderRadius:
                BorderRadius.circular(AppDimens.of(context).corner_radius),
          ),
          margin: EdgeInsets.all(AppDimens.of(context).main_margin),
          padding: EdgeInsets.all(AppDimens.of(context).main_margin_small),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppTranslations.of(context).text("user_name_text1"),
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: AppDimens.of(context).H4,
                      fontFamily: 'SF',
                      color: AppColor.of(context).text_grey.withOpacity(0.6))),
              Text(AppTranslations.of(context).text("user_name_text2"),
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: AppDimens.of(context).H4,
                      fontFamily: 'SF',
                      color: AppColor.of(context).main_color))
            ],
          ),
        ),
        Container(
            alignment: AlignmentDirectional.centerStart,
            margin: EdgeInsets.fromLTRB(
                AppDimens.of(context).main_margin,
                AppDimens.of(context).main_margin,
                AppDimens.of(context).main_margin,
                0.0),
            child: Text(AppTranslations.of(context).text("user_name_text3"),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: AppDimens.of(context).H2,
                    fontFamily: 'SF',
                    color: AppColor.of(context).text_grey.withOpacity(0.6)))),
      ],
    );
    return Scaffold(
        key: scaffoldKey,
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
                                  .text("user_name_text"),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: AppDimens.of(context).H1,
                                  color: AppColor.of(context).white_text,
                                  fontFamily: 'AU'))))
                ])),
        backgroundColor: Colors.transparent,
        body: Container(
            height: double.infinity,
            child: SingleChildScrollView(
            child: Center(child: Column(children: <Widget>[
              have_name ? name_exist_box : enter_name_part])))));
  }
}
