import 'package:my_resume/generated/l10n.dart';
import 'package:my_resume/main.dart';

//语言
String get language =>
    S.of(navigatorKey.currentState!.overlay!.context)!.language;
//中文
String get chinese =>
    S.of(navigatorKey.currentState!.overlay!.context)!.chinese;
//英文
String get english =>
    S.of(navigatorKey.currentState!.overlay!.context)!.english;

//主题
String get appTheme =>
    S.of(navigatorKey.currentState!.overlay!.context)!.appTheme;
//默认
String get themeDefault =>
    S.of(navigatorKey.currentState!.overlay!.context)!.themeDefault;
//暗黑
String get themeDark =>
    S.of(navigatorKey.currentState!.overlay!.context)!.themeDark;
