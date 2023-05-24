import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

import 'package:my_resume/data/skill_data.dart';
import 'package:my_resume/theme/theme_data.dart';
import 'package:my_resume/widget/lazy_load_image_widget.dart';

// ignore: must_be_immutable
class SlidingCardsView extends StatefulWidget {
  List<SkillBean> skilBeans;
  PageController pageController;

  SlidingCardsView(this.skilBeans, this.pageController, {key})
      : super(key: key);

  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    // pageController = PageController(viewportFraction: 0.8);
    widget.pageController.addListener(() {
      setState(() => pageOffset = widget.pageController.page!);
    });
  }

  @override
  void dispose() {
    widget.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 220.r,
      child: PageView(
        controller: widget.pageController,
        children: <Widget>[
          for (SkillBean skill in widget.skilBeans)
            SlidingCard(
              skillBean: skill,
              offset: pageOffset - widget.skilBeans.indexOf(skill),
            )
        ],
      ),
    );
  }
}

class SlidingCard extends StatelessWidget {
  final SkillBean skillBean;
  final double offset;

  const SlidingCard({
    Key? key,
    required this.skillBean,
    required this.offset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) / 0.08));
    return Transform.translate(
      offset: Offset(-30 * gauss * offset.sign, 0),
      child: Card(
        color: themeColor.secondLevelMainBgColor,
        margin:
            EdgeInsets.only(left: 10.r, right: 15.r, bottom: 25.r, top: 15.r),
        elevation: 8.r,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(5.r)),
                  child: LazyLoadImageWidget(skillBean.imageBgUrl,
                      alignment: Alignment(-offset.abs(), 0),
                      width: double.infinity,
                      height: (MediaQuery.of(context).size.height - 160.r) / 3),
                ),
                Positioned(
                    child: Container(
                  padding: EdgeInsets.only(left: offset.abs() * 80.r),
                  height: (MediaQuery.of(context).size.height - 160.r) / 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.r),
                        topRight: Radius.circular(5.r)),
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LazyLoadImageWidget(
                        skillBean.imageUrl,
                        width: 60.r - (offset.abs() * 20),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.r),
                        child: Text(
                          skillBean.title,
                          style: TextStyle(
                              color: themeColor.titleLightColor,
                              fontSize: 40.r - (offset.abs() * 20),
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ))
              ],
            ),
            SizedBox(height: 10.r),
            Expanded(
              child: CardContent(
                itemTitle: skillBean.skillList,
                offset: gauss,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  final double offset;
  final List<String> itemTitle;

  const CardContent({Key? key, required this.itemTitle, required this.offset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.r),
      child: ListView(
        children: getContent(),
      ),
    );
  }

  List<Widget> getContent() {
    List<Widget> widgets = [];

    for (int i = 0; i < itemTitle.length; i++) {
      widgets.add(Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(bottom: 5.r),
        child: Transform.translate(
          offset: Offset(10.r * offset, 0),
          child: Text("·" + itemTitle[i],
              style: TextStyle(
                  fontSize: 14.sp,
                  height: 1.5,
                  color: themeColor.titleBlackColor)),
        ),
      ));
    }

    return widgets;
  }
}
