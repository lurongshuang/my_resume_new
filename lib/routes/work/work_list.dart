import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_resume/base/base_routes_widget.dart';
import 'package:my_resume/data/work_data.dart';
import 'package:my_resume/generated/l10n.dart';
import 'package:my_resume/routes/work/work_del.dart';
import 'package:my_resume/theme/theme_data.dart';

// Created by卢融霜
// on 2021/9/22
// Description：公司列表
class WorkList extends StatefulWidget {
  const WorkList({Key? key}) : super(key: key);

  @override
  _WorkListState createState() => _WorkListState();
}

class _WorkListState extends State<WorkList> {
  @override
  Widget build(BuildContext context) {
    return BaseRoutesWidget(
        title: S.of(context)?.workInfo ?? "",
        child: ListView.builder(
            itemCount: listWorks.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  openPageFunction(index);
                },
                child: WorkItem(listWorks[index]),
              );
            }));
  }

  void openPageFunction(index) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation animation,
            Animation secondaryAnimation) {
          //目标页面
          return WorkDel(listWorks[index]);
        },
        //打开新的页面用时
        transitionDuration: Duration(milliseconds: 500),
        //关半页岩用时
        reverseTransitionDuration: Duration(milliseconds: 500),
        //过渡动画构建
        transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation secondaryAnimation,
          Widget child,
        ) {
          //渐变过渡动画
          return FadeTransition(
            opacity: Tween(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.easeIn,
              ),
            ),
            child: child,
          );
        },
      ),
    );
  }
}

/// 公司列表item
class WorkItem extends StatelessWidget {
  WorkDelBean workEntity;

  WorkItem(this.workEntity, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
          color: themeColor.secondLevelMainBgColor,
          border: Border(
              bottom:
                  BorderSide(width: 5.r, color: themeColor.underlineColor))),
      child: Column(
        children: [
          Row(
            children: [
              Hero(
                tag: workEntity.comImgUrl,
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    margin: EdgeInsets.only(right: 10.r),
                    width: 70.r,
                    height: 45.r,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.r)),
                        border: Border.all(
                            color: themeColor.underlineColor, width: 1.r)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                      child: Image.asset(
                        workEntity.comImgUrl,
                        width: 60.r,
                        height: 35.r,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.r),
                    child: Hero(
                        tag: workEntity.comAbbName,
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            workEntity.comAbbName,
                            style: TextStyle(
                                color: themeColor.titleBlackColor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                  ),
                  Text(
                    "${workEntity.typeString1}|${workEntity.typeString2}|${workEntity.typeString3}",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: themeColor.secondLevelTitleColor),
                  )
                ],
              ),
              Expanded(
                  child: Container(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15.r,
                  color: themeColor.secondLevelTitleColor,
                ),
              ))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.r),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "${workEntity.workDuty}",
                      style: TextStyle(
                          fontSize: 15.sp, color: themeColor.titleBlackColor),
                    ),
                    Expanded(
                        child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "${workEntity.workDate}",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: themeColor.secondLevelTitleColor),
                            )))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.r),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5.r),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.r)),
                            color: themeColor.underlineColor),
                        child: Text(
                          "${workEntity.addressTag}",
                          style: TextStyle(
                              fontSize: 12.r,
                              color: themeColor.titleBlackColor),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
