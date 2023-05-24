import 'package:my_resume/generated/l10n.dart';

import '../main.dart';

//其他标题
String get otherTitle =>
    S.of(navigatorKey.currentState!.overlay!.context)!.otherTitle;
//简历下载
String get wordDow =>
    S.of(navigatorKey.currentState!.overlay!.context)!.wordDow;
//下载地址
String dowUrl =
    "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/af5ad81c-a1ee-499f-a3e1-54fd786d6750.doc";
