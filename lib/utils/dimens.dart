import 'package:flutter/material.dart';

class AppColor extends InheritedWidget {
  static AppColor of(BuildContext context) => context. dependOnInheritedWidgetOfExactType<AppColor>();

  AppColor({Widget child, Key key}): super(key: key, child: child);

  bool dark_mode = false;
   Color main_bg = Color(0xFF000000);
   Color text_grey = Color(0xFFEBEBF5);
   Color field_grey = Color(0xFFEEEEEE);
   Color field_beige = Color(0xFFFFFBF1);
   Color btn_main_color = Color(0xff9BD6AE);
   Color btn_main_text_color = Color(0xff000000);
   Color main_text_color = Color(0xff9BD6AE);
   Color white_text = Color(0xFFFFFFFF);
   Color black_text = Color(0xFF000000);
   Color lite_black = Color(0xFF1E1E1E);
   Color chat_lite_black = Color(0xFF2D2D2D);
   Color dark_grey_text = Color(0xFF4C4C4C);
   Color lite_grey_text = Color(0xFFEEEEEE);
   Color white_field_bg = Color(0xFFFFFFFF);
   Color grey_field_bg = Color(0xFF767680);
   Color circle_chart_grey = Color(0xFFEEEEEE);
   Color orange = Color(0xFFFF6D4A);
   Color grey = Color(0xFFC4C4C4);
   Color blue = Color(0xFF171778);
   Color lite_orange = Color(0xFFFFAC98);
   Color start_gradient = Color(0xFFFC602B);
   Color end_gradient = Color(0xFFF0981A);
   Color circle_chart_yellow = Color(0xFFFFBD13);
   Color green_color = Color(0xFF269651);
   Color main_color = Color(0xFF9BD6AE);
   Color dolar_color = Color(0xFF99D7AF);
   Color bitcoin_color = Color(0xFFF7931A);
   Color red = Colors.red;

  changeColor(int theme){
    switch (theme){
      case 0:
        btn_main_color = Color(0xff9BD6AE);
        main_text_color = Color(0xff9BD6AE);
        main_color = Color(0xFF9BD6AE);
        break;
      case 1:
        btn_main_color = Color(0xff1BA2F3);
        main_text_color = Color(0xff1BA2F3);
        main_color = Color(0xff1BA2F3);
        break;
      default:
    }
  }

  @override
  bool updateShouldNotify(AppColor oldWidget) => false;
}

class AppDimens extends InheritedWidget {
  static AppDimens of(BuildContext context) => context. dependOnInheritedWidgetOfExactType<AppDimens>();

  const AppDimens({Widget child, Key key}): super(key: key, child: child);

  final double back_btn_height = 20.0;
  final double icon_btn_height = 25.0;
  final double icon_logo_height = 40.0;
  final double plus_height = 45.0;
  final double user_photo_height = 105.0;
  final double icon_plus_height = 50.0;
  final double icon_logo_width = 20.0;
  final double top_header_height = 146.0;
  final double image_width = 120.0;
  final double box_width = 135.0;
  final double box_height = 300.0;
  final double main_margin = 30.0;
  final double main_margin_big = 60.0;
  final double main_margin_mbig = 70.0;
  final double main_margin_vbig = 90.0;
  final double main_margin_small = 10.0;
  final double main_margin_vsmall = 4.0;
  final double main_margin_midle = 20.0;
  final double btn_padding = 21.0;
  final double icon_padding = 6.0;
  final double btn_corner_radius = 51.0;
  final double corner_radius = 10.0;
  final double H02 = 44;
  final double H01 = 32;
  final double H01_5 = 36;
  final double H0_5 = 28;
  final double H0 = 26;
  final double H1 = 22;
  final double H1_5 = 18;
  final double H2 = 16;
  final double H3 = 14;
  final double H4 = 12;
  final double H5 = 10;

  @override
  bool updateShouldNotify(AppDimens oldWidget) => false;
}