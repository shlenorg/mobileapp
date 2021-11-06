
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';

class AddContactScreen extends StatefulWidget {

  const AddContactScreen({Key key}) : super(key: key);

  @override
  _AddContactScreenState createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String user_name;
  String nick_name = "";

  _AddContactScreenState();

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
                  Expanded(
                      child: Center(
                          child: Text(
                              AppTranslations.of(context)
                                  .text("new_contact_text"),
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
                            children: <Widget>[


                              Container(
                                margin: EdgeInsets.only(
                                    top: AppDimens.of(context).main_margin_vbig),
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
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(child: Container(
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
                                          AppDimens.of(context).main_margin_midle,
                                          AppDimens.of(context).main_margin,
                                          AppDimens.of(context).main_margin_small,
                                          0),
                                      child: Form(
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                disabledBorder: InputBorder.none,
                                                contentPadding: EdgeInsets.all(0.0),
                                                hintText: AppTranslations.of(context)
                                                    .text("user_name_text5"),
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
                                          )))),
                                  GestureDetector(
                                      onTap: () {
                                        if (user_name != null && user_name.length > 3) {
                                          inDeveloping(scaffoldKey);
                                        } else {
                                          checkErrorState(
                                              context,
                                              AppTranslations.of(context).text("error_form"),
                                              scaffoldKey);
                                        }
                                      },
                                      child: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, AppDimens.of(context).main_margin, AppDimens.of(context).main_margin_midle, 0.0),
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
                                  margin: EdgeInsets.fromLTRB(
                                      AppDimens.of(context)
                                          .main_margin_midle,
                                      AppDimens.of(context)
                                          .main_margin_vbig,
                                      AppDimens.of(context)
                                          .main_margin_midle,
                                      AppDimens.of(context)
                                          .main_margin_midle),
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Text(AppTranslations.of(context).text("user_name_text6"),
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            contentPadding: EdgeInsets.all(0.0),
                                            hintText: AppTranslations.of(context).text("user_name_text7"),
                                            hintStyle: TextStyle(
                                              color: AppColor.of(context).white_text.withOpacity(0.6),
                                              fontFamily: "SF",
                                            )),
                                        textCapitalization: TextCapitalization.sentences,
                                        onChanged: (val) {
                                          setState(() {
                                            nick_name = val;
                                          });
                                        },
                                        keyboardType: TextInputType.text,
                                        style: TextStyle(
                                          color: AppColor.of(context).white_text.withOpacity(0.6),
                                          fontFamily: "SF",
                                        ),
                                      ))),

                              Container(
                                  margin: EdgeInsets.fromLTRB(
                                      AppDimens.of(context).main_margin,
                                      AppDimens.of(context).main_margin_small,
                                      AppDimens.of(context).main_margin,
                                      AppDimens.of(context).main_margin_small),
                                  alignment: AlignmentDirectional.centerEnd,
                                  child: Text(nick_name.length.toString() + "/32",
                                        style: TextStyle(
                                          fontFamily: 'SF',
                                          color: AppColor.of(context).white_text,
                                          fontSize: AppDimens.of(context).H2,
                                        )),
                                  )
                    ])))));
  }
}
