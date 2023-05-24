import 'package:my_resume/generated/l10n.dart';

import '../main.dart';

List<UserTag> get userTagList => [
      UserTag(S.of(navigatorKey.currentState!.overlay!.context)!.name,
          S.of(navigatorKey.currentState!.overlay!.context)!.myName),
      UserTag(S.of(navigatorKey.currentState!.overlay!.context)!.sex,
          S.of(navigatorKey.currentState!.overlay!.context)!.mySex),
      UserTag(S.of(navigatorKey.currentState!.overlay!.context)!.age,
          S.of(navigatorKey.currentState!.overlay!.context)!.myAge),
      UserTag(S.of(navigatorKey.currentState!.overlay!.context)!.height,
          S.of(navigatorKey.currentState!.overlay!.context)!.myHeight),
      UserTag(S.of(navigatorKey.currentState!.overlay!.context)!.weight,
          S.of(navigatorKey.currentState!.overlay!.context)!.myWeight),
      UserTag(S.of(navigatorKey.currentState!.overlay!.context)!.nativePlace,
          S.of(navigatorKey.currentState!.overlay!.context)!.myNativePlace),
      UserTag(S.of(navigatorKey.currentState!.overlay!.context)!.nation,
          S.of(navigatorKey.currentState!.overlay!.context)!.myNation),
      UserTag(S.of(navigatorKey.currentState!.overlay!.context)!.phone,
          S.of(navigatorKey.currentState!.overlay!.context)!.myPhone),
      UserTag(S.of(navigatorKey.currentState!.overlay!.context)!.email,
          S.of(navigatorKey.currentState!.overlay!.context)!.myEmail),
      UserTag(S.of(navigatorKey.currentState!.overlay!.context)!.qq,
          S.of(navigatorKey.currentState!.overlay!.context)!.myQq),
      UserTag(S.of(navigatorKey.currentState!.overlay!.context)!.dutyStation,
          S.of(navigatorKey.currentState!.overlay!.context)!.myDutyStation),
    ];

List<String> get tagList => [
      S.of(navigatorKey.currentState!.overlay!.context)!.honesty,
      S.of(navigatorKey.currentState!.overlay!.context)!.lively,
      S.of(navigatorKey.currentState!.overlay!.context)!.challenge,
      S.of(navigatorKey.currentState!.overlay!.context)!.TeamConsciousness,
      S.of(navigatorKey.currentState!.overlay!.context)!.WorkSeriously,
      S.of(navigatorKey.currentState!.overlay!.context)!.GoodAtCommunication
    ];

String get myHeadUrl =>
    "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/31141195-87dc-4e92-8d39-4e16e20e0084.jpg";

class UserTag {
  String title;
  String context;

  UserTag(this.title, this.context);
}
