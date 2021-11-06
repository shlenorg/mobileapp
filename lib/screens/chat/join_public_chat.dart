import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/networks/models/body_models.dart';
import 'package:shlen/screens/chat/single_chat_screen.dart';
import 'package:shlen/utils/constants.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:web_socket_channel/io.dart';

class JoinPublicChatScreen extends StatefulWidget {
  const JoinPublicChatScreen({Key key}) : super(key: key);

  @override
  _JoinPublicChatScreenState createState() => _JoinPublicChatScreenState();
}

class _JoinPublicChatScreenState extends State<JoinPublicChatScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> services_list = [
    "#SHLEN",
    "#support",
    "#crypto",
    "#chitchat",
    "#defi",
    "#markets",
    "#dap-ps",
    "#devcon",
    "#eth2",
  ];
  String chat_name;

  _JoinPublicChatScreenState();

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
    var main_box = Column(
      children: [
        Container(
            margin: EdgeInsets.fromLTRB(
                AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_vbig,
                AppDimens.of(context).main_margin_midle,
                AppDimens.of(context).main_margin_midle),
            alignment: AlignmentDirectional.center,
            child: Text(AppTranslations.of(context).text("jpc_text1"),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: AppDimens.of(context).H2,
                    color: AppColor.of(context).white_text.withOpacity(0.6),
                    fontFamily: 'SF'))),
        Container(
            padding: EdgeInsets.fromLTRB(
                AppDimens.of(context).main_margin_small,
                0,
                AppDimens.of(context).main_margin_small,
                0.0),
            decoration: BoxDecoration(
              color: AppColor.of(context).grey_field_bg.withOpacity(0.4),
              borderRadius:
                  BorderRadius.circular(AppDimens.of(context).corner_radius),
            ),
            margin: EdgeInsets.fromLTRB(AppDimens.of(context).main_margin_midle,
                0, AppDimens.of(context).main_margin_midle, 0.0),
            child: Form(
                child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.all(0.0),
                  hintText: "# chat-name",
                  hintStyle: TextStyle(
                    color: AppColor.of(context).white_text.withOpacity(0.6),
                    fontFamily: "SF",
                  )),
              textCapitalization: TextCapitalization.sentences,
              onChanged: (val) {
                setState(() {
                  chat_name = val;
                });
              },
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: AppColor.of(context).white_text.withOpacity(0.6),
                fontFamily: "SF",
              ),
            ))),
      ],
    );
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

        Expanded(child: Center(
                      child: Text(
                          AppTranslations.of(context).text("join_public_chat_text"),
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
                      main_box,
                      Container(
                          margin: EdgeInsets.all(
                              AppDimens.of(context).main_margin_midle),
                          alignment: AlignmentDirectional.centerStart,
                          child: Text("Category 1",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: AppDimens.of(context).H1,
                                  color: AppColor.of(context).white_text,
                                  fontFamily: 'AU'))),
                      Container(
                          margin: EdgeInsets.fromLTRB(
                            AppDimens.of(context).main_margin_midle,
                            0,
                            AppDimens.of(context).main_margin_midle,
                            0,
                          ),
                          alignment: AlignmentDirectional.center,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 5.0, // g g g
                            runSpacing: 0.0, // a gap between lines
                            children: <Widget>[...generate_tags()],
                          )),
                      Container(
                          margin: EdgeInsets.all(
                              AppDimens.of(context).main_margin_midle),
                          alignment: AlignmentDirectional.centerStart,
                          child: Text("Category 2",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: AppDimens.of(context).H1,
                                  color: AppColor.of(context).white_text,
                                  fontFamily: 'AU'))),
                      Container(
                          margin: EdgeInsets.fromLTRB(
                            AppDimens.of(context).main_margin_midle,
                            0,
                            AppDimens.of(context).main_margin_midle,
                            0,
                          ),
                          alignment: AlignmentDirectional.center,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 5.0, // g gg
                            runSpacing: 0.0, // a gap between lines
                            children: <Widget>[...generate_tags()],
                          )),
                      Container(
                          margin: EdgeInsets.all(
                              AppDimens.of(context).main_margin_midle),
                          alignment: AlignmentDirectional.centerStart,
                          child: Text("Category 3",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: AppDimens.of(context).H1,
                                  color: AppColor.of(context).white_text,
                                  fontFamily: 'AU'))),
                      Container(
                          margin: EdgeInsets.fromLTRB(
                            AppDimens.of(context).main_margin_midle,
                            0,
                            AppDimens.of(context).main_margin_midle,
                            0,
                          ),
                          alignment: AlignmentDirectional.center,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 5.0, // g g
                            runSpacing: 0.0, // a gap between lines
                            children: <Widget>[...generate_tags()],
                          )),
                    ])))));
  }

  generate_tags() {
    return services_list.map((tag) => get_chip(tag)).toList();
  }

  get_chip(name) {
    return FilterChip(
      labelPadding: EdgeInsets.all(0.0),
        onSelected: (val) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SingleChatScreen(
                      regUserBody: RegUserBody(
                          id: 88,
                          first_name: "test",
                          last_name: "tester",
                          user_key: "1"),
                      chat_id: "test" + "88")));
        },
        padding: EdgeInsets.all(0.0),
        label: Container(
            decoration: BoxDecoration(
              color: AppColor.of(context).lite_black,
              border:
                  Border.all(color: AppColor.of(context).white_text, width: 1),
              borderRadius: BorderRadius.circular(AppDimens.of(context).H2),
            ),
            padding: EdgeInsets.all(AppDimens.of(context).icon_padding),
            child: Text("${name}",
                style: TextStyle(
                    fontSize: AppDimens.of(context).H2,
                    color: AppColor.of(context).main_text_color,
                    fontFamily: 'SF'))));
  }
}
