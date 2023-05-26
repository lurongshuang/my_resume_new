import 'package:my_resume/generated/l10n.dart';

import '../main.dart';
const String hostImgHead = "http://baichao.jdysoft.cn/lrs_files/word";
//其他标题
String get otherTitle =>
    S.of(navigatorKey.currentState!.overlay!.context)!.otherTitle;
//简历下载
String get wordDow =>
    S.of(navigatorKey.currentState!.overlay!.context)!.wordDow;
//下载地址
String dowUrl =
    "$hostImgHead/lurongshuang.doc";
