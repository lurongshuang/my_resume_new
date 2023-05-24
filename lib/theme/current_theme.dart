
import 'package:flutter/widgets.dart';
import 'package:my_resume/theme/theme_data.dart';

class CurrentTheme extends ChangeNotifier{
  //当前主题
  AppThemeEnum _nowAppTheme = AppThemeEnum.defaultTheme;

  AppThemeEnum get getThisThemeColor => _nowAppTheme;

  setTheme(AppThemeEnum themeColor) {
    _nowAppTheme = themeColor;
    notifyListeners();
  }

}