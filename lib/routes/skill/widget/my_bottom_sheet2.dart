import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_resume/data/skill_data.dart';
import 'package:my_resume/generated/l10n.dart';
import 'package:my_resume/routes/skill/widget/sheet_icon.dart';
import 'package:my_resume/routes/skill/widget/sheet_title.dart';
import 'package:my_resume/theme/theme_data.dart';
import 'package:my_resume/widget/lazy_load_image_widget.dart';

import '../../../main.dart';

// @description 作用: 纵向 技能点
// @date: 2021/11/26
// @author: 卢融霜

class MyBottomSheet2 extends StatefulWidget {
  Function(int) onTapIt;

  MyBottomSheet2({required this.onTapIt, Key? key}) : super(key: key);

  @override
  _MyBottomSheet2State createState() => _MyBottomSheet2State();
}

late AnimationController _controller;

//向上高度
double iconTop = 60.r;
double iconMinPadding = 5.r;
double iconMaxPadding = 10.r;
//最小宽度
double iconMinWidth = 42.r;
//最大宽度
double get iconMaxWidth =>
    ((MediaQuery.of(navigatorKey.currentState!.overlay!.context).size.height -
            90.r -
            60.r -
            (skillList.length * 12.r)) /
        skillList.length);

class _MyBottomSheet2State extends State<MyBottomSheet2>
    with SingleTickerProviderStateMixin {
  //最小高度
  double minHeight = 120.r;

  //最大高度
  double get maxHeight => MediaQuery.of(context).size.height - 90.r;

  //数据长度
  int get itemDatasLength => skillList.length;

  //垂直间距
  // double get iconVerticalSpa =>
  //     //页面最大高
  //     (maxHeight -
  //         //头部标题高度
  //         (60.r) -
  //         //纵向数量
  //         (iconMaxWidth * itemDatasLength)) /
  //     itemDatasLength;
  //垂直间距
  double get iconVerticalSpa => 12.r;

  //横向间距
  double get iconHorizonSpa =>
      (MediaQuery.of(context).size.width -
          //左右 两个外边距  30.r * 2
          (60.r) -
          (6.r) -
          //横向数量
          (iconMinWidth * itemDatasLength)) /
      (itemDatasLength - 1);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Stack(
            children: [
              Positioned(
                  height: lerp(minHeight, maxHeight),
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: GestureDetector(
                    onVerticalDragUpdate: _dragUpdate,
                    onVerticalDragEnd: _handleDragEnd,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffff9900),
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30.r)),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 30.r),
                        child: Stack(
                          children: [
                            Positioned(
                              height: 60.r,
                              top: 20.r,
                              left: 0,
                              child: SheetTitle(
                                fontSize: lerp(14.sp, 20.sp)!,
                                title: S.of(context)?.skillInfo ?? "",
                              ),
                            ),
                            Positioned(
                                height: 60.r,
                                top: 20.r,
                                right: 0,
                                child: InkWell(
                                  onTap: _toggle,
                                  child: SheetIcon(
                                    fontSize: lerp(20.sp, 30.sp)!,
                                    showList: _controller.status ==
                                        AnimationStatus.completed,
                                  ),
                                )),
                            for (int i = 0; i < skillList.length; i++)
                              getIconList(skillList[i], i),
                            for (int j = 0; j < skillList.length; j++)
                              getContentList(skillList[j], j),
                          ],
                        )),
                  ))
            ],
          );
        });
  }

  ///开关切换
  void _toggle() {
    //判断打开状态 进行切换
    bool isOpen = _controller.status == AnimationStatus.completed;
    //velocity  传递正数 执行到 upperBound 值  负数 执行到 lowerBound 值
    _controller.fling(velocity: isOpen ? -1 : 1);
  }

  ///滑动关键代码，监听纵向滑动阀值，设置响应高度
  void _dragUpdate(DragUpdateDetails details) {
    _controller.value -= (details.primaryDelta! / maxHeight)!;
  }

  /// 开关核心代码： 根据滑动速度，滑动高度，来判断 开关
  void _handleDragEnd(DragEndDetails details) {
    //排除 动画过程中，和完成状态。
    if (_controller.isAnimating ||
        _controller.status == AnimationStatus.completed) return;

    //获取滑动速度
    final double flingVelocity =
        details.velocity.pixelsPerSecond.dy / maxHeight;

    //设置滑动执行方向
    if (flingVelocity < 0.0) {
      _controller.fling(velocity: max(1.0, -flingVelocity));
    } else if (flingVelocity > 0.0) {
      _controller.fling(velocity: min(-1.0, -flingVelocity));
    } else {
      _controller.fling(velocity: _controller.value < 0.5 ? -1.0 : 1.0);
    }
  }

  //图片距离左侧数值
  double iconItemLeft(i) {
    //min: 第i个  * （间距 + 最小宽度）   max 靠最左  0
    return lerp(i * (iconHorizonSpa + iconMinWidth), 0)!;
  }

  //详细信息item 距离左侧数据
  double contentItemLeft(i) {
    //min: 第i个  * （间距 + 最小宽度）   max 靠最左  0
    return iconItemLeft(i) + lerp(iconMinWidth, iconMaxWidth)!;
  }

  double iconItemTop(i) {
    return lerp(iconTop,
        iconTop + i * (iconVerticalSpa + lerp(iconMinWidth, iconMaxWidth)!))!;
  }

  ///底部横向 图片展示
  Widget getIconList(SkillBean itemData, int i) {
    return SheetIconWidget(
        height: lerp(iconMinWidth.r, iconMaxWidth)!,
        width: lerp(iconMinWidth.r, iconMaxWidth)!,
        top: iconItemTop(i),
        left: iconItemLeft(i),
        itemData: itemData,
        url: itemData.portraitImg,
        onTapIt: (index) {
          _toggle();
          widget.onTapIt(index);
        });
  }

  ///展开后，显示 右侧详细信息
  Widget getContentList(SkillBean itemData, int i) {
    return SheetContentWidget(
      height: lerp(iconMinWidth.r, iconMaxWidth),
      width: lerp(
          0,
          MediaQuery.of(context).size.width -
              60.r -
              lerp(iconMinWidth.r, iconMaxWidth)!),
      top: iconItemTop(i),
      left: contentItemLeft(i),
      itemData: itemData,
      index: i,
      onTapIt: (index) {
        _toggle();
        widget.onTapIt(index);
      },
    );
  }
}

/// 滑动核心代码， 根据 _controller.value 的0 - 1的值，返回 minHeight - maxHeight 相对于的值，完成高度设置
double? lerp(double minHeight, double maxHeight) {
  var height = lerpDouble(minHeight, maxHeight, _controller.value);
  return height;
}

//详细信息子item
class ContentItem extends StatelessWidget {
  SkillBean itemData;

  ContentItem(this.itemData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
                child: Text(
              itemData.portraitName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp,
                  color: themeColor.titleBlackColor),
            ))
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.r),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                itemData.portraitContext,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 12.sp, color: themeColor.secondLevelTitleColor),
              ))
            ],
          ),
        )
      ],
    );
  }
}

//详细信息item
class SheetContentWidget extends StatelessWidget {
  double? height;
  double? width;
  double? top;
  double? left;
  SkillBean? itemData;
  int? index;
  Function(int)? onTapIt;

  SheetContentWidget(
      {this.height,
      this.width,
      this.top,
      this.left,
      this.itemData,
      this.onTapIt,
      this.index,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        height: height,
        width: width,
        top: top,
        left: left,
        child: InkWell(
          onTap: () {
            onTapIt!(index!);
          },
          child: AnimatedOpacity(
              opacity: _controller.status == AnimationStatus.completed ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: Container(
                decoration: BoxDecoration(
                  color: themeColor.secondLevelMainBgColor,
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(lerp(5.r, 10.r)!)),
                ),
                height: iconMaxWidth,
                width: MediaQuery.of(context).size.width - 60.r - iconMaxWidth,
                padding: EdgeInsets.all(8.r),
                child: Visibility(
                    visible: _controller.status == AnimationStatus.completed,
                    child: ContentItem(itemData!)),
              )),
        ));
  }
}

///图片
class SheetIconWidget extends StatelessWidget {
  double? height;
  double? width;
  double? top;
  double? left;
  String? url;
  SkillBean? itemData;

  Function(int)? onTapIt;

  SheetIconWidget(
      {this.url,
      this.height,
      this.width,
      this.top,
      this.left,
      this.itemData,
      this.onTapIt,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        height: height,
        width: width,
        top: top,
        left: left,
        child: InkWell(
          onTap: () {
            onTapIt!(skillList.indexOf(itemData!));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(lerp(5.r, 10.r)!),
                right: Radius.circular(lerp(5.r, 0)!)),
            child: Container(
              color: Color.fromRGBO(0, 0, 0, 0.6),
              padding: EdgeInsets.all(lerp(iconMinPadding, iconMaxPadding)!),
              child: LazyLoadImageWidget(
                url!,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ));
  }
}
