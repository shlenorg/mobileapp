
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/networks/models/body_models.dart';
import 'package:shlen/screens/chat/single_chat_screen.dart';
import 'package:shlen/utils/constants.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';
import 'package:web_socket_channel/io.dart';

class NewChatScreen extends StatefulWidget {

  const NewChatScreen({Key key}) : super(key: key);

  @override
  _NewChatScreenState createState() => _NewChatScreenState();
}

class _NewChatScreenState extends State<NewChatScreen>
    with SingleTickerProviderStateMixin {
  String user_name;
  String photo;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  _NewChatScreenState();

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
                icon:
                SvgPicture.asset('assets/images/wallet_menu_icon.svg'),
                onPressed: () {
                  inDeveloping(scaffoldKey);
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
                  Expanded(child: Center(
                      child: Text(
                          AppTranslations.of(context).text("new_chat_text"),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: AppDimens.of(context).H1,
                              color: AppColor.of(context).white_text,
                              fontFamily: 'AU'))))
                ])),
        backgroundColor: AppColor.of(context).lite_black,
        key: scaffoldKey,
        body: Builder(
            builder: (context) => Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                        Container(
                            margin: EdgeInsets.fromLTRB(
                                AppDimens.of(context).main_margin_midle,
                                AppDimens.of(context).main_margin_big,
                                AppDimens.of(context).main_margin_midle,
                                AppDimens.of(context).main_margin_small),
                            child:Row(
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
                                          0,
                                          AppDimens.of(context).main_margin,
                                          AppDimens.of(context).main_margin_small,
                                          0.0),
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
                              )),

        GestureDetector(
          //You need to make my child interactive
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SingleChatScreen(regUserBody: RegUserBody(id: 88, first_name: "test", last_name: "tester", user_key: "CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR" ), chat_id: "test" + "88")));
            },
            child: Container(
            margin: EdgeInsets.fromLTRB(
                AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_midle,
                0),
            child: Row(
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
                                            children: [Text(
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
                                                              .white_text)),
                                            ])),
                                  ]))),
        GestureDetector(
          //You need to make my child interactive
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SingleChatScreen(regUserBody: RegUserBody(id: 88, first_name: "test", last_name: "tester", user_key: "CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR" ), chat_id: "test" + "88")));
            },
            child:  Container(
            margin: EdgeInsets.fromLTRB(
                AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_midle,
                0),
            child: Row(
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
                                            children: [Text(
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
                                                              .white_text)),
                                            ])),
                                  ]))),
        GestureDetector(
          //You need to make my child interactive
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SingleChatScreen(regUserBody: RegUserBody(id: 88, first_name: "test", last_name: "tester", user_key: "CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR" ), chat_id: "test" + "88")));
            },
            child:  Container(
            margin: EdgeInsets.fromLTRB(
                AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_midle,
                0),
            child: Row(
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
                                            children: [Text(
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
                                                              .white_text)),
                                            ])),
                                  ]))),
        GestureDetector(
          //You need to make my child interactive
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SingleChatScreen(regUserBody: RegUserBody(id: 88, first_name: "test", last_name: "tester", user_key: "CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR" ), chat_id: "test" + "88")));
            },
            child:  Container(
            margin: EdgeInsets.fromLTRB(
                AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_midle,
                0),
            child: Row(
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
                                            children: [Text(
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
                                                              .white_text)),
                                            ])),
                                  ]))),
        GestureDetector(
          //You need to make my child interactive
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SingleChatScreen(regUserBody: RegUserBody(id: 88, first_name: "test", last_name: "tester", user_key: "CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR" ), chat_id: "test" + "88")));
            },
            child:  Container(
            margin: EdgeInsets.fromLTRB(
                AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_midle,
                0),
            child: Row(
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
                                            children: [Text(
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
                                                              .white_text)),
                                            ])),
                                  ]))),
        GestureDetector(
          //You need to make my child interactive
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SingleChatScreen(regUserBody: RegUserBody(id: 88, first_name: "test", last_name: "tester", user_key: "CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR" ), chat_id: "test" + "88")));
            },
            child:  Container(
            margin: EdgeInsets.fromLTRB(
                AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_midle,
                0),
            child: Row(
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
                                            children: [Text(
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
                                                              .white_text)),
                                            ])),
                                  ]))),
                    ]))));
  }
}
