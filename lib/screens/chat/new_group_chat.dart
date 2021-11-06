
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

class NewGroupChatScreen extends StatefulWidget {

  const NewGroupChatScreen({Key key}) : super(key: key);

  @override
  _NewGroupChatScreenState createState() => _NewGroupChatScreenState();
}

class _NewGroupChatScreenState extends State<NewGroupChatScreen>
    with SingleTickerProviderStateMixin {
  String nick_name;
  String photo;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  _NewGroupChatScreenState();

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
    var top_box = Column(children: [
      Container(
          margin: EdgeInsets.fromLTRB(
              AppDimens.of(context)
                  .main_margin_midle,
              AppDimens.of(context)
                  .main_margin_mbig,
              AppDimens.of(context)
                  .main_margin_midle,
              AppDimens.of(context)
                  .main_margin_midle),
          alignment: AlignmentDirectional.center,
          child: Text("1/10",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: AppDimens.of(context).H2,
                  color: AppColor.of(context).white_text.withOpacity(0.6),
                  fontFamily: 'SF'))),
      Container(
          padding: EdgeInsets.fromLTRB(0,
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
                  prefixIconConstraints: BoxConstraints(
                    minHeight: AppDimens.of(context).main_margin_midle,
                    maxHeight: AppDimens.of(context).main_margin_midle,
                  ),
                  prefixIcon: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(Icons.search,
                    color:  AppColor.of(context).white_text.withOpacity(0.6),),
                  ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.all(0.0),
                    hintText: AppTranslations.of(context).text("search_text"),
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
              AppDimens.of(context)
                  .main_margin_midle,
              AppDimens.of(context)
                  .main_margin,
              AppDimens.of(context)
                  .main_margin_midle,
              0),
          alignment: AlignmentDirectional.centerStart,
          child: Text(AppTranslations.of(context).text("members_text"),
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: AppDimens.of(context).H2,
                  color: AppColor.of(context).white_text,
                  fontFamily: 'SF'))),
    ],);
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.share, color: Colors.transparent),
                  onPressed: (){

                  }),
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

        Expanded(child:  Center(
                      child: Text(
                          AppTranslations.of(context).text("new_group_chat_text"),
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
                    child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              top_box,

                              GestureDetector(
                                //You need to make my child interactive
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SingleChatScreen(regUserBody: RegUserBody(id: 88, first_name: "test", last_name: "tester", user_key: "CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR" ), chat_id: "test" + "88")));
                                  },
                                  child: Container(
                                      padding: EdgeInsets.only(top:
                                      AppDimens.of(context)
                                          .main_margin_small),
                                      margin: EdgeInsets.fromLTRB(
                                          AppDimens.of(context)
                                              .main_margin_midle,
                                          AppDimens.of(context)
                                              .main_margin_small,
                                          0,
                                          0),
                                      child: Center(
                                          child: Container(
                                              margin: EdgeInsets.only(
                                                  top: AppDimens.of(
                                                      context)
                                                      .main_margin_small),
                                              child: Row(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .center,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Row(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .start,
                                                        children: [
                                                          Container(
                                                              width:
                                                              AppDimens.of(context).icon_plus_height,
                                                              height:
                                                              AppDimens.of(context).icon_plus_height,
                                                              decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    color: AppColor
                                                                        .of(context)
                                                                        .white_text, width: 1),
                                                                borderRadius: BorderRadius.circular(
                                                                    AppDimens
                                                                        .of(context)
                                                                        .main_margin_midle),
                                                              ),
                                                              margin: EdgeInsets.fromLTRB(0.0, 0.0,
                                                                  AppDimens
                                                                      .of(context)
                                                                      .main_margin_small, 0.0),
                                                              child: ClipRRect(
                                                                  borderRadius: BorderRadius.circular(
                                                                      AppDimens
                                                                          .of(context)
                                                                          .main_margin_midle),
                                                                  child: photo != "" &&
                                                                      photo != null
                                                                      ? Image.network(
                                                                    photo,
                                                                    width:
                                                                    AppDimens
                                                                        .of(context)
                                                                        .H0,
                                                                    height:
                                                                    AppDimens
                                                                        .of(context)
                                                                        .H0,
                                                                  )
                                                                      : Stack(
                                                                    alignment: AlignmentDirectional.center,
                                                                    children: [
                                                                      Icon(
                                                                        Icons.person,
                                                                        color: AppColor
                                                                            .of(context)
                                                                            .white_text,
                                                                        size: AppDimens
                                                                            .of(context)
                                                                            .H0,
                                                                      )
                                                                    ],
                                                                  ))),
                                                          Container(
                                                              child: Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    Padding(padding: EdgeInsets.only(bottom: AppDimens.of(context).main_margin_small),
                                                                        child: Text("Wary Velvety Beagle",
                                                                            textAlign: TextAlign.start,
                                                                            style: TextStyle(fontSize: AppDimens.of(context).H2, fontFamily: 'AU',
                                                                                color: AppColor.of(context).white_text))),
                                                                    Text("0x042684...5933",
                                                                        textAlign: TextAlign.start,
                                                                        style: TextStyle(fontSize: AppDimens.of(context).H2, fontFamily: 'AU',
                                                                            color: AppColor.of(context).white_text.withOpacity(0.6))),
                                                                  ] )),
                                                        ]),

                                                    Container(
                                                        width: AppDimens.of(context).main_margin_midle,
                                                        height: AppDimens.of(context).main_margin_midle,
                                                        padding: EdgeInsets.fromLTRB(0,
                                                            0, AppDimens.of(context).main_margin_small, 0.0),
                                                        decoration: BoxDecoration(
                                                          color: AppColor.of(context).grey_field_bg.withOpacity(0.4),
                                                          borderRadius:
                                                          BorderRadius.circular(AppDimens.of(context).corner_radius),
                                                        ),
                                                        margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle, 0,
                                                            AppDimens.of(context).main_margin_midle, 0.0)),
                                                  ]))))),
                              GestureDetector(
                                //You need to make my child interactive
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SingleChatScreen(regUserBody: RegUserBody(id: 88, first_name: "test", last_name: "tester", user_key: "CpzICiBs4_ntW9RBTiPjIwrNj8ZL19hR" ), chat_id: "test" + "88")));

                                  },
                                  child: Container(
                                      padding: EdgeInsets.only(top:
                                      AppDimens.of(context)
                                          .main_margin_small),
                                      margin: EdgeInsets.fromLTRB(
                                          AppDimens.of(context)
                                              .main_margin_midle,
                                          AppDimens.of(context)
                                              .main_margin_small,
                                          0,
                                          0),
                                      child: Center(
                                          child: Container(
                                              margin: EdgeInsets.only(
                                                  top: AppDimens.of(
                                                      context)
                                                      .main_margin_small),
                                              child: Row(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .center,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Row(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .start,
                                                        children: [
                                                          Container(
                                                              width:
                                                              AppDimens.of(context).icon_plus_height,
                                                              height:
                                                              AppDimens.of(context).icon_plus_height,
                                                              decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    color: AppColor
                                                                        .of(context)
                                                                        .white_text, width: 1),
                                                                borderRadius: BorderRadius.circular(
                                                                    AppDimens
                                                                        .of(context)
                                                                        .main_margin_midle),
                                                              ),
                                                              margin: EdgeInsets.fromLTRB(0.0, 0.0,
                                                                  AppDimens
                                                                      .of(context)
                                                                      .main_margin_small, 0.0),
                                                              child: ClipRRect(
                                                                  borderRadius: BorderRadius.circular(
                                                                      AppDimens
                                                                          .of(context)
                                                                          .main_margin_midle),
                                                                  child: photo != "" &&
                                                                      photo != null
                                                                      ? Image.network(
                                                                    photo,
                                                                    width:
                                                                    AppDimens
                                                                        .of(context)
                                                                        .H0,
                                                                    height:
                                                                    AppDimens
                                                                        .of(context)
                                                                        .H0,
                                                                  )
                                                                      : Stack(
                                                                    alignment: AlignmentDirectional.center,
                                                                    children: [
                                                                      Icon(
                                                                        Icons.person,
                                                                        color: AppColor
                                                                            .of(context)
                                                                            .white_text,
                                                                        size: AppDimens
                                                                            .of(context)
                                                                            .H0,
                                                                      )
                                                                    ],
                                                                  ))),
                                                          Container(
                                                              child: Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    Padding(padding: EdgeInsets.only(bottom: AppDimens.of(context).main_margin_small),
                                                                        child: Text("Wary Velvety Beagle",
                                                                            textAlign: TextAlign.start,
                                                                            style: TextStyle(fontSize: AppDimens.of(context).H2, fontFamily: 'AU',
                                                                                color: AppColor.of(context).white_text))),
                                                                    Text("0x042684...5933",
                                                                        textAlign: TextAlign.start,
                                                                        style: TextStyle(fontSize: AppDimens.of(context).H2, fontFamily: 'AU',
                                                                            color: AppColor.of(context).white_text.withOpacity(0.6))),
                                                                  ] )),
                                                        ]),

                                                    Container(
                                                        width: AppDimens.of(context).main_margin_midle,
                                                        height: AppDimens.of(context).main_margin_midle,
                                                        padding: EdgeInsets.fromLTRB(0,
                                                            0, AppDimens.of(context).main_margin_small, 0.0),
                                                        decoration: BoxDecoration(
                                                          color: AppColor.of(context).grey_field_bg.withOpacity(0.4),
                                                          borderRadius:
                                                          BorderRadius.circular(AppDimens.of(context).corner_radius),
                                                        ),
                                                        margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle, 0,
                                                            AppDimens.of(context).main_margin_midle, 0.0)),
                                                  ]))))),
                              GestureDetector(
                                //You need to make my child interactive
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SingleChatScreen(regUserBody: RegUserBody(id: 88, first_name: "test", last_name: "tester", user_key: "3" ), chat_id: "test" + "88")));

                                  },
                                  child: Container(
                                      padding: EdgeInsets.only(top:
                                      AppDimens.of(context)
                                          .main_margin_small),
                                      margin: EdgeInsets.fromLTRB(
                                          AppDimens.of(context)
                                              .main_margin_midle,
                                          AppDimens.of(context)
                                              .main_margin_small,
                                          0,
                                          0),
                                      child: Center(
                                          child: Container(
                                              margin: EdgeInsets.only(
                                                  top: AppDimens.of(
                                                      context)
                                                      .main_margin_small),
                                              child: Row(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .center,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Row(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .start,
                                                        children: [
                                                          Container(
                                                              width:
                                                              AppDimens.of(context).icon_plus_height,
                                                              height:
                                                              AppDimens.of(context).icon_plus_height,
                                                              decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    color: AppColor
                                                                        .of(context)
                                                                        .white_text, width: 1),
                                                                borderRadius: BorderRadius.circular(
                                                                    AppDimens
                                                                        .of(context)
                                                                        .main_margin_midle),
                                                              ),
                                                              margin: EdgeInsets.fromLTRB(0.0, 0.0,
                                                                  AppDimens
                                                                      .of(context)
                                                                      .main_margin_small, 0.0),
                                                              child: ClipRRect(
                                                                  borderRadius: BorderRadius.circular(
                                                                      AppDimens
                                                                          .of(context)
                                                                          .main_margin_midle),
                                                                  child: photo != "" &&
                                                                      photo != null
                                                                      ? Image.network(
                                                                    photo,
                                                                    width:
                                                                    AppDimens
                                                                        .of(context)
                                                                        .H0,
                                                                    height:
                                                                    AppDimens
                                                                        .of(context)
                                                                        .H0,
                                                                  )
                                                                      : Stack(
                                                                    alignment: AlignmentDirectional.center,
                                                                    children: [
                                                                      Icon(
                                                                        Icons.person,
                                                                        color: AppColor
                                                                            .of(context)
                                                                            .white_text,
                                                                        size: AppDimens
                                                                            .of(context)
                                                                            .H0,
                                                                      )
                                                                    ],
                                                                  ))),
                                                          Container(
                                                              child: Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    Padding(padding: EdgeInsets.only(bottom: AppDimens.of(context).main_margin_small),
                                                                        child: Text("Wary Velvety Beagle",
                                                                            textAlign: TextAlign.start,
                                                                            style: TextStyle(fontSize: AppDimens.of(context).H2, fontFamily: 'AU',
                                                                                color: AppColor.of(context).white_text))),
                                                                    Text("0x042684...5933",
                                                                        textAlign: TextAlign.start,
                                                                        style: TextStyle(fontSize: AppDimens.of(context).H2, fontFamily: 'AU',
                                                                            color: AppColor.of(context).white_text.withOpacity(0.6))),
                                                                  ] )),
                                                        ]),

                                                    Container(
                                                        width: AppDimens.of(context).main_margin_midle,
                                                        height: AppDimens.of(context).main_margin_midle,
                                                        padding: EdgeInsets.fromLTRB(0,
                                                            0, AppDimens.of(context).main_margin_small, 0.0),
                                                        decoration: BoxDecoration(
                                                          color: AppColor.of(context).grey_field_bg.withOpacity(0.4),
                                                          borderRadius:
                                                          BorderRadius.circular(AppDimens.of(context).corner_radius),
                                                        ),
                                                        margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle, 0,
                                                            AppDimens.of(context).main_margin_midle, 0.0)),
                                                  ]))))),
                    ])))));
  }
}
