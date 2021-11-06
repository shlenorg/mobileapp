import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shlen/screens/main/main_screen.dart';
import 'package:shlen/screens/main/start_screen.dart';
import 'package:shlen/utils/constants.dart';
import 'package:shlen/utils/dimens.dart';
import 'package:shlen/utils/utils.dart';

import 'localization/app_translations_delegate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'localization/application.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Constants(child: AppColor(child: AppDimens(child: LocalisedApp())));
  }
}

class LocalisedApp extends StatefulWidget {
  @override
  LocalisedAppState createState() {
    return new LocalisedAppState();
  }
}

class LocalisedAppState extends State<LocalisedApp> {
  AppTranslationsDelegate _newLocaleDelegate;
  Future<bool> _checkToken;

  @override
  void initState() {
    super.initState();
    _checkToken = checkLoginValue();
    _newLocaleDelegate = AppTranslationsDelegate(newLocale: null);
    application.onLocaleChanged = onLocaleChange;
    getTheme();
  }

  @override
  Widget build(BuildContext context) {
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/account_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/chat_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/exchange_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/wallet_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/logo_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/bitcoin_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/etherium_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/usa_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/signing_phrase_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/set_currency_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/scan_token_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/manage_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/exit_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/about_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/help_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/additionally_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/sync_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/bell_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/theme_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/privat_pol_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/contacts_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/send_message_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/send_message_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/plus_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/arrow_back.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/ens_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/log_out_2_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/plus_btn_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/main_bg.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/done_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/wallet_menu_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/bitcoin_round_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/get_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/lok_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/upload_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/usd_round_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/group_chat_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/invite_friends_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/join_public_chat.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/new_chat_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/clear_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/fetch_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/garbage_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/logo_notif.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/up_arrow_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/down_arrow_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/add_file_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/voice_icon.svg"),
        context);
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, "assets/images/add_photo_icon.svg"),
        context);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarColor: AppColor
          .of(context)
          .black_text,
    ));
    return MaterialApp(
      title: 'Shlen',
      darkTheme: ThemeData.from(colorScheme: ColorScheme.dark()),
      theme: ThemeData(
          canvasColor: Colors.transparent,
          primaryColor: AppColor
              .of(context)
              .main_bg,
          primarySwatch: Colors.grey,
          unselectedWidgetColor: Colors.grey,
      splashColor: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: FutureBuilder<bool>(
          future: _checkToken,
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (snapshot.data == true) {
              return Start();
            } else {
              return MainScreen();
            }
          }),
//      MainScreen(),
      localizationsDelegates: [
        _newLocaleDelegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale("en", ""),
      ],
    );
  }

  void onLocaleChange(Locale locale) {
    setState(() {
      _newLocaleDelegate = AppTranslationsDelegate(newLocale: locale);
    });
  }


  Future<bool> checkLoginValue() async {
    var themes = await getInt(Constants().themes);
    if (themes != null){
      AppColor.of(context).changeColor(themes);
    } else {
      AppColor.of(context).changeColor(0);
    }

    var check = await getBool(Constants().is_auth);
    return check;
  }

  getTheme() async{
    var number = await getInt(Constants().themes);
    if (number != null) {
      AppColor.of(context).changeColor(number);
    }
  }
}