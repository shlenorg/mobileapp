import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/screens/auth/choose_name_screen.dart';
import 'package:shlen/utils/dimens.dart';

class CreateNewKeyScreen extends StatefulWidget {
  const CreateNewKeyScreen({Key key}) : super(key: key);

  @override
  _CreateNewKeyScreenState createState() => _CreateNewKeyScreenState();
}

class _CreateNewKeyScreenState extends State<CreateNewKeyScreen>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  _CreateNewKeyScreenState();

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
    var enter_text =
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Container(
          margin: EdgeInsets.fromLTRB(
              AppDimens.of(context).main_margin,
              AppDimens.of(context).main_margin_vbig,
              AppDimens.of(context).main_margin,
              0.0),
          child: Text(
              AppTranslations.of(context).text("generate_your_keys_text"),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: AppDimens.of(context).H1,
                  fontFamily: 'AU',
                  color: AppColor.of(context).white_text))),
      Container(
          margin: EdgeInsets.fromLTRB(
              AppDimens.of(context).main_margin,
              AppDimens.of(context).main_margin,
              AppDimens.of(context).main_margin,
              0.0),
          child: Text(
              AppTranslations.of(context).text("generate_your_keys_text1"),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: AppDimens.of(context).H3,
                  fontFamily: 'SF',
                  color: AppColor.of(context).text_grey.withOpacity(0.6)))),
    ]);
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
            titleSpacing: 0.0,
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                      enter_text,
                      Container(
                          height: MediaQuery.of(context).size.height /2,
                          width: MediaQuery.of(context).size.width ,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/generate_key.png"),
                                  fit: BoxFit.fill))),
                      Container(
                          width: double.infinity,
                          margin: EdgeInsets.fromLTRB(
                              AppDimens.of(context).main_margin,
                              0,
                              AppDimens.of(context).main_margin,
                              0.0),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ChooseNameScreen()));
                            },
                            child: Text(
                                AppTranslations.of(context)
                                    .text("get_started_text"),
                                style: TextStyle(fontFamily: 'SF')),
                            color: AppColor.of(context).btn_main_color,
                            textColor: AppColor.of(context).btn_main_text_color,
                            padding: EdgeInsets.fromLTRB(
                                0.0,
                                AppDimens.of(context).main_margin_small,
                                0.0,
                                AppDimens.of(context).main_margin_small),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    AppDimens.of(context).main_margin_small)),
                          )),
                      Container(
                          margin: EdgeInsets.fromLTRB(
                            AppDimens.of(context).main_margin,
                            AppDimens.of(context).main_margin_midle,
                            AppDimens.of(context).main_margin,
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
                              AppDimens.of(context).main_margin_midle),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                              AppTranslations.of(context)
                                  .text("existing_keys_text"),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: AppDimens.of(context).H3,
                                  color: AppColor.of(context).white_text,
                                  fontFamily: 'AU'))),
                    ])))));
  }
}
