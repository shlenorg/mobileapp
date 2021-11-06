import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shlen/localization/app_translations.dart';
import 'package:shlen/screens/main/wallet_screen.dart';
import 'package:shlen/utils/dimens.dart';

import 'account_screen.dart';
import 'chat_screen.dart';
import 'exchange_screen.dart';

class Start extends StatefulWidget {
  final int main_index;

  const Start({Key key, this.main_index}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState(main_index);
}

class _StartScreenState extends State<Start> {
  final int main_index;
  int _currentIndex = 0;
  final List<Widget> _children = [
    ChatScreen(),
    ExchangeScreen(),
    WalletScreen(),
    AccountScreen()
  ];

  _StartScreenState(this.main_index);

  @override
  void initState() {
    super.initState();
    if (main_index != null) {
      _currentIndex = main_index;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Expanded(child: _children[_currentIndex]),
              Container(
                  margin: EdgeInsets.fromLTRB(
                    AppDimens.of(context).main_margin_midle,
                    0.0,
                    AppDimens.of(context).main_margin_midle,
                    0,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: AppColor.of(context).white_text,
                        width: 2.0,
                      ),
                    ),
                  ))
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColor.of(context).main_bg,
            onTap: onTabTapped,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    "assets/images/chat_icon.svg",
                    color: AppColor.of(context).main_text_color,
                      height: AppDimens.of(context).H3,
                      width: AppDimens.of(context).H3
                  ),
                  icon: SvgPicture.asset("assets/images/chat_icon.svg",
                      color: AppColor.of(context).grey,
                  height: AppDimens.of(context).H3,
                  width: AppDimens.of(context).H3,),
                  title: Text(AppTranslations.of(context).text("chat_text"),
                      style: TextStyle(
                          fontSize: AppDimens.of(context).H2,
                          fontFamily: 'AU',
                          color: _currentIndex == 0
                              ? AppColor.of(context).main_text_color
                              : AppColor.of(context).grey))),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    "assets/images/exchange_icon.svg",
                    color: AppColor.of(context).main_text_color,
                      height: AppDimens.of(context).H3,
                      width: AppDimens.of(context).H3
                  ),
                  icon: SvgPicture.asset("assets/images/exchange_icon.svg",
                      height: AppDimens.of(context).H3,
                      width: AppDimens.of(context).H3),
                  title: Text(AppTranslations.of(context).text("exchange_text"),
                      style: TextStyle(
                          fontSize: AppDimens.of(context).H2,
                          fontFamily: 'AU',
                          color: _currentIndex == 1
                              ? AppColor.of(context).main_text_color
                              : AppColor.of(context).grey))),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    "assets/images/wallet_icon.svg",
                    color: AppColor.of(context).main_text_color,
                      height: AppDimens.of(context).H3,
                      width: AppDimens.of(context).H3
                  ),
                  icon: SvgPicture.asset("assets/images/wallet_icon.svg",
                      height: AppDimens.of(context).H3,
                      width: AppDimens.of(context).H3),
                  title: Text(AppTranslations.of(context).text("wallet_text"),
                      style: TextStyle(
                          fontSize: AppDimens.of(context).H2,
                          fontFamily: 'AU',
                          color: _currentIndex == 2
                              ? AppColor.of(context).main_text_color
                              : AppColor.of(context).grey))),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    "assets/images/account_icon.svg",
                    color: AppColor.of(context).main_text_color,
                      height: AppDimens.of(context).H3,
                      width: AppDimens.of(context).H3
                  ),
                  icon: SvgPicture.asset("assets/images/account_icon.svg",
                      height: AppDimens.of(context).H3,
                      width: AppDimens.of(context).H3),
                  title: Text(AppTranslations.of(context).text("account_text"),
                      style: TextStyle(
                          fontSize: AppDimens.of(context).H2,
                          fontFamily: 'AU',
                          color: _currentIndex == 3
                              ? AppColor.of(context).main_text_color
                              : AppColor.of(context).grey))),
            ],
          ),
        ));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
        context: context,
        builder: (context) =>
            Dialog(
              backgroundColor: AppColor
                  .of(context)
                  .lite_black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppDimens
                          .of(context)
                          .corner_radius))),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.fromLTRB(
                          AppDimens
                              .of(context)
                              .main_margin,
                          AppDimens
                              .of(context)
                              .main_margin,
                          AppDimens
                              .of(context)
                              .main_margin,
                          0),
                      child: Text(
                          AppTranslations.of(context).text(
                              'back_pressed_text1'),
                          style: TextStyle(
                              fontSize: AppDimens
                                  .of(context)
                                  .H1_5,
                              color: AppColor
                                  .of(context)
                                  .white_text))),
                  Container(
                      padding: EdgeInsets.fromLTRB(
                          AppDimens
                              .of(context)
                              .main_margin,
                          AppDimens
                              .of(context)
                              .main_margin_small,
                          AppDimens
                              .of(context)
                              .main_margin,
                          AppDimens
                              .of(context)
                              .main_margin),
                      child: Text(
                          AppTranslations.of(context).text('back_pressed_text2'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColor
                                  .of(context)
                                  .white_text))),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  color: AppColor
                                      .of(context)
                                      .text_grey
                                      .withOpacity(0.3),
                                  width: 0.5,
                                ),
                                top: BorderSide(
                                  color: AppColor
                                      .of(context)
                                      .text_grey
                                      .withOpacity(0.3),
                                  width: 1.0,
                                ),
                              ),
                            ),

                            child: FlatButton(
                                onPressed: () => Navigator.of(context).pop(false),
                                child: Container(
                                    child: Center(
                                      child: Text(
                                        AppTranslations.of(context).text('no_text'),
                                        style:
                                        TextStyle(
                                            fontSize: AppDimens.of(context).H2,
                                            color: AppColor.of(context).main_text_color),
                                      ),
                                    )))),),

                        Expanded(child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                  color: AppColor
                                      .of(context)
                                      .text_grey
                                      .withOpacity(0.3),
                                  width: 0.5,
                                ),
                                top: BorderSide(
                                  color: AppColor
                                      .of(context)
                                      .text_grey
                                      .withOpacity(0.3),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child:  FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop(true);
//                deleteSharedData(Constants().a);
                                },
                                child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                        AppDimens.of(context).main_margin,
                                        AppDimens.of(context).main_margin_small,
                                        AppDimens.of(context).main_margin,
                                        AppDimens.of(context).main_margin_small),
                                    child: Center(
                                        child: Text(
                                            AppTranslations.of(context).text('yes_text'),
                                            style: TextStyle(
                                                fontSize: AppDimens.of(context).H2,
                                                color:
                                                AppColor.of(context).main_text_color))))))),
                      ])
                ],
              ),
            )) ??
        false);
  }
}
