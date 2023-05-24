import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_resume/data/skill_data.dart';

// Created by卢融霜
// on 2021/9/2
// Description：个人技能
class SkillWidget extends StatefulWidget {
  SkillBean skillBean;

  SkillWidget(this.skillBean, {Key? key}) : super(key: key);

  @override
  _SkillWidgetState createState() => _SkillWidgetState();
}

class _SkillWidgetState extends State<SkillWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.r)),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.r),
                      topRight: Radius.circular(5.r)),
                  child: Image.asset(
                    widget.skillBean.imageBgUrl,
                    width: double.infinity,
                    height: 180.r,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 180.r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.r),
                        topRight: Radius.circular(5.r)),
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        widget.skillBean.imageUrl,
                        width: 60.r,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.r),
                        child: Text(
                          widget.skillBean.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(15.r),
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: getItem(widget.skillBean.skillList),
                    );
                  }),
            ))
          ],
        ));
  }

  getItem(List<String> skillList) {
    List<Widget> items = [];
    for (int i = 0; i < skillList.length; i++) {
      items.add(SkillTextWidget(skillList[i]));
    }
    return items;
  }
}

// Created by卢融霜
// on 2021/9/1
// Description：
class SkillTextWidget extends StatelessWidget {
  String title;

  SkillTextWidget(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(left: 5.r, top: 5.r),
          child: Text(
            "·$title",
            style: TextStyle(height: 1.2.r, fontSize: 16.sp),
          ),
        )),
      ],
    );
  }
}
