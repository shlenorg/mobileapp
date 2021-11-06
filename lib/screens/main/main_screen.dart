import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/screens/auth/smooth_screen.dart';
import 'package:shlen/screens/auth/your_keys_screen.dart';
import 'package:shlen/utils/dimens.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var logo = Container(
        margin: EdgeInsets.fromLTRB(
            AppDimens.of(context).main_margin,
            AppDimens.of(context).main_margin_big,
            AppDimens.of(context).main_margin,
            AppDimens.of(context).main_margin_small),
        child: Image.asset("assets/images/key_image.png"));

    var generate_keys = Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(
            AppDimens.of(context).main_margin,
            AppDimens.of(context).main_margin_vbig,
            AppDimens.of(context).main_margin,
            0.0),
        child: FlatButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SmoothScreen()));
          },
          child: Text(AppTranslations.of(context).text("generate_keys_text"),
              style: TextStyle(fontFamily: 'SF')),
          color: AppColor.of(context).btn_main_color,
          textColor: AppColor.of(context).btn_main_text_color,
          padding: EdgeInsets.fromLTRB(0.0, AppDimens.of(context).main_margin_small,
              0.0, AppDimens.of(context).main_margin_small),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  AppDimens.of(context).main_margin_small)),
        ));

    var access_key = Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(
            AppDimens.of(context).main_margin,
            0.0,
            AppDimens.of(context).main_margin,
            AppDimens.of(context).main_margin_small),
        child: FlatButton(
          onPressed: () {
           Navigator.push(
               context,
               MaterialPageRoute(
                   builder: (context) => YorKeysScreen()));
          },
          child: Text(
              AppTranslations.of(context).text("access_existing_keys_text"),
              style: TextStyle(fontFamily: 'SF')),
          textColor: AppColor.of(context).main_text_color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  AppDimens.of(context).btn_corner_radius)),
        ));

    var enter_text = Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
        margin: EdgeInsets.fromLTRB(
            AppDimens.of(context).main_margin,
            AppDimens.of(context).main_margin_vbig,
            AppDimens.of(context).main_margin,
            0.0),
        child: Text(AppTranslations.of(context).text("get_your_keys_text"),
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
        child: Text(AppTranslations.of(context).text("main_start_text"),
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: AppDimens.of(context).H3,
                fontFamily: 'SF',
                color: AppColor.of(context).text_grey.withOpacity(0.6))))

    ]);
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              enter_text,
    Expanded(
    child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/key_image.png"),
                          fit: BoxFit.fill)),
                  child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        generate_keys,
                        access_key,
                        Container(
                            margin: EdgeInsets.fromLTRB(
                                AppDimens.of(context).main_margin,
                                0.0,
                                AppDimens.of(context).main_margin,
                                AppDimens.of(context).main_margin),
                            child: Text(AppTranslations.of(context).text("few_seconds_text"),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: AppDimens.of(context).H3,
                                    fontFamily: 'SF',
                                    color: AppColor.of(context).text_grey.withOpacity(0.6))))
                      ]))),
            ],
          ),
        )));
  }
}
