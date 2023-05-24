//姓名
import 'package:my_resume/generated/l10n.dart';
import 'package:my_resume/main.dart';

String get myName => S.of(navigatorKey.currentState!.overlay!.context)!.myName;
//介绍
String get introduce =>
    S.of(navigatorKey.currentState!.overlay!.context)!.introduce;
//基本信息
String get basicInfo =>
    S.of(navigatorKey.currentState!.overlay!.context)!.basicInfo;
//个人技能
String get skillInfo =>
    S.of(navigatorKey.currentState!.overlay!.context)!.skillInfo;
//工作经历
String get workInfo =>
    S.of(navigatorKey.currentState!.overlay!.context)!.workInfo;
//教育经历
String get educationInfo =>
    S.of(navigatorKey.currentState!.overlay!.context)!.educationInfo;
//项目经历
String get projectInfo =>
    S.of(navigatorKey.currentState!.overlay!.context)!.projectInfo;
//其他
String get otherInfo =>
    S.of(navigatorKey.currentState!.overlay!.context)!.otherInfo;

//京IPC备案
String icpName = "京ICP备2021039417";
//京IPC备案跳转地址
String icpUrl = "https://beian.miit.gov.cn/";
//公安备案图标
String beiAnIcon =
    "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/8976b999-c4f5-4b1b-9178-b9432d1f139f.png";
//公安备案
String beiAnName = "京公网安备 11011102001813号";
//公安备案跳转地址
String beiAnUrl =
    "http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11011102001813";
