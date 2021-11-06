
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/screens/account/add_contsct_screen.dart';
import 'package:shlen/screens/account/single_contact_screen.dart';
import 'package:shlen/utils/dimens.dart';

class ContactsScreen extends StatefulWidget {

  const ContactsScreen({Key key}) : super(key: key);

  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String photo;

  _ContactsScreenState();

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
    var contact_list = Column(children: [


      GestureDetector(
        //You need to make my child interactive
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        AddContactScreen()));
          },
          child: Container(
              padding: EdgeInsets.only(top:
              AppDimens.of(context)
                  .main_margin_small),
              margin: EdgeInsets.fromLTRB(
                  AppDimens.of(context)
                      .icon_btn_height,
                  AppDimens.of(context)
                      .main_margin_big,
                  AppDimens.of(context)
                      .main_margin,
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
                                      padding: EdgeInsets.all(AppDimens.of(context).main_margin_small),
                                      decoration: BoxDecoration(
                                        color: AppColor.of(context).main_color,
                                        borderRadius:
                                        BorderRadius.circular(AppDimens.of(context).corner_radius),
                                      ),
                                      child: SvgPicture
                                          .asset("assets/images/plus_btn_icon.svg", color: AppColor.of(context).black_text,
                                        width: AppDimens.of(context).main_margin_midle,
                                        height: AppDimens.of(context).main_margin_midle,
                                      )),
                                  Container(
                                      child: Container(
                                          padding:
                                          EdgeInsets.only(left: AppDimens.of(context).main_margin_small),
                                          child: Text(AppTranslations.of(context)
                                              .text("add_contact_text"), style: TextStyle(fontSize: AppDimens.of(context).H1_5, fontFamily: 'SF', fontWeight: FontWeight.bold, color: AppColor.of(context).main_text_color)))),
                                ]),

                          ]))))),
      GestureDetector(
        //You need to make my child interactive
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SingleContactScreen()));
          },
          child: Container(
              padding: EdgeInsets.only(top:
              AppDimens.of(context)
                  .main_margin_small),
              margin: EdgeInsets.fromLTRB(
                  AppDimens.of(context)
                      .icon_btn_height,
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

                          ]))))),
      GestureDetector(
        //You need to make my child interactive
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SingleContactScreen()));
          },
          child: Container(
              padding: EdgeInsets.only(top:
              AppDimens.of(context)
                  .main_margin_small),
              margin: EdgeInsets.fromLTRB(
                  AppDimens.of(context)
                      .icon_btn_height,
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

                          ]))))),
      GestureDetector(
        //You need to make my child interactive
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SingleContactScreen()));
          },
          child: Container(
              padding: EdgeInsets.only(top:
              AppDimens.of(context)
                  .main_margin_small),
              margin: EdgeInsets.fromLTRB(
                  AppDimens.of(context)
                      .icon_btn_height,
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

                          ]))))),
      GestureDetector(
        //You need to make my child interactive
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SingleContactScreen()));
          },
          child: Container(
              padding: EdgeInsets.only(top:
              AppDimens.of(context)
                  .main_margin_small),
              margin: EdgeInsets.fromLTRB(
                  AppDimens.of(context)
                      .icon_btn_height,
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

                          ]))))),

    ],);
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
                                  .text("contacts_text"),
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
                              contact_list
                    ])))));
  }
}
