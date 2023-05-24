import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_resume/base/base_routes_widget.dart';
import 'package:my_resume/data/skill_data.dart';
import 'package:my_resume/generated/l10n.dart';
import 'package:my_resume/routes/skill/widget/my_bottom_sheet2.dart';
import 'package:my_resume/routes/skill/widget/sliding_cards.dart';

// Created by卢融霜
// on 2021/9/1
// Description：个人技能
class MySkill extends StatefulWidget {
  const MySkill({Key? key}) : super(key: key);

  @override
  _MySkillState createState() => _MySkillState();
}

class _MySkillState extends State<MySkill> {
  int cardIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  double pageIndex = 0;
  PageController pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return BaseRoutesWidget(
      title: S.of(context)?.skillInfo ?? "",
      child: Stack(
        children: [
          SlidingCardsView(skillList, pageController),
          MyBottomSheet2(
            onTapIt: (index) {
              setState(() {
                pageIndex = index.toDouble();
                pageController.animateToPage(index,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              });
            },
          )
        ],
      ),
    );
  }
}
