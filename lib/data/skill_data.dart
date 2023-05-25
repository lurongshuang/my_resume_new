import 'package:my_resume/generated/l10n.dart';
import 'package:my_resume/main.dart';

String get flutterSkill_1 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.flutterSkill_1;

String get flutterSkill_2 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.flutterSkill_2;

String get flutterSkill_3 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.flutterSkill_3;

String get flutterSkill_4 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.flutterSkill_4;

String get flutterSkill_5 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.flutterSkill_5;

String get flutterSkill_6 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.flutterSkill_6;

String get androidSkill_1 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.androidSkill_1;

String get androidSkill_2 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.androidSkill_2;

String get androidSkill_3 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.androidSkill_3;

String get androidSkill_4 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.androidSkill_4;

String get androidSkill_5 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.androidSkill_5;

String get androidSkill_6 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.androidSkill_6;

String get androidSkill_7 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.androidSkill_7;

String get javaSkill_1 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.javaSkill_1;

String get javaSkill_2 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.javaSkill_2;

String get javaSkill_3 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.javaSkill_3;

String get javaSkill_4 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.javaSkill_4;

String get vueSkill_1 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.vueSkill_1;

String get vueSkill_2 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.vueSkill_2;

String get vueSkill_3 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.vueSkill_3;

String get vueSkill_4 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.vueSkill_4;

String get vueSkill_5 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.vueSkill_5;

String get vueSkill_6 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.vueSkill_6;

String get vueSkill_7 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.vueSkill_7;

String get manageSkill_1 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.manageSkill_1;

String get manageSkill_2 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.manageSkill_2;

String get manageSkill_3 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.manageSkill_3;

String get manageSkill_4 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.manageSkill_4;

String get manageSkill_5 =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.manageSkill_5;

String get manageName =>
    S.of(navigatorKey!.currentState!.overlay!.context)!.manageName;

const String hostImgHead = "http://baichao.jdysoft.cn/lrs_files/skill/";

List<SkillBean> get skillList => [
      SkillBean(
          "$hostImgHead/flutter_bg.gif",
          "$hostImgHead/ic_flutter.png",
          "Flutter",
          [
            flutterSkill_1,
            flutterSkill_2,
            flutterSkill_3,
            flutterSkill_4,
            flutterSkill_5,
            flutterSkill_6,
          ],
          "$hostImgHead/ic_flutter.png",
          "Flutter",
          "$flutterSkill_1，$flutterSkill_2，$flutterSkill_3，$flutterSkill_4，$flutterSkill_5，$flutterSkill_6"),
      SkillBean(
          "$hostImgHead/gir_bg.gif",
          "$hostImgHead/ic_android_bg.png",
          "Android",
          [
            androidSkill_1,
            androidSkill_2,
            androidSkill_3,
            androidSkill_4,
            androidSkill_5,
            androidSkill_6,
            androidSkill_7,
          ],
          "$hostImgHead/ic_android_bg.png",
          "Android",
          "$androidSkill_1，$androidSkill_2，$androidSkill_3，$androidSkill_4，$androidSkill_5，$androidSkill_6，$androidSkill_7"),
      SkillBean(
          "$hostImgHead/java_bg.gif",
          "$hostImgHead/ic_java.png",
          "Java",
          [
            javaSkill_1,
            javaSkill_2,
            javaSkill_3,
            javaSkill_4,
          ],
          "$hostImgHead/ic_java.png",
          "Java",
          "$javaSkill_1，$javaSkill_2,$javaSkill_3,$javaSkill_4"),
      SkillBean(
          "$hostImgHead/web_bg.gif",
          "$hostImgHead/ic_vue.png",
          "Web",
          [
            vueSkill_1,
            vueSkill_2,
            vueSkill_3,
            vueSkill_4,
            vueSkill_5,
            vueSkill_6,
            vueSkill_7
          ],
          "$hostImgHead/ic_vue.png",
          "Web",
          "$vueSkill_1，$vueSkill_2，$vueSkill_3，$vueSkill_4，$vueSkill_5，$vueSkill_6，$vueSkill_7"),
      SkillBean(
          "$hostImgHead/manager_bg.gif",
          "$hostImgHead/ic_manager.png",
          S.of(navigatorKey!.currentState!.overlay!.context)!.manageName,
          [
            manageSkill_1,
            manageSkill_2,
            manageSkill_3,
            manageSkill_4,
            manageSkill_5
          ],
          "$hostImgHead/ic_manager.png",
          S.of(navigatorKey!.currentState!.overlay!.context)!.manageName,
          "$manageSkill_1，$manageSkill_2，$manageSkill_3，$manageSkill_4，$manageSkill_5")
    ];

class SkillBean {
  //标题背景图片
  String imageBgUrl;

  //标题图片
  String imageUrl;

  //标题名称
  String title;

  //技能点集合
  List<String> skillList;

  //纵向 image
  String portraitImg;
  String portraitName;
  String portraitContext;

  SkillBean(this.imageBgUrl, this.imageUrl, this.title, this.skillList,
      this.portraitImg, this.portraitName, this.portraitContext);
}
