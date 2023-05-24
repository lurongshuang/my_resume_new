import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 点击回调 index
typedef TagClick = Function(int index);

/// 自定义tag builder
typedef TagBuilder = Widget Function(BuildContext context, int index);

/// 快速创建tagView
class TagView extends StatefulWidget {
  /// 内容列表
  final List<String> tags;

  /// margin
  EdgeInsets? margin;

  /// padding
  EdgeInsets? padding;

  /// 视图总宽度
  final double? width;

  /// tag高度
  final double? tagHeight;

  /// 文字样式
  TextStyle? itemStyle;

  /// 内容文字上下左右间距
  EdgeInsets? itemPadding;

  /// tag背景颜色
  Color? color;

  /// tagView背景颜色
  Color? backgroundColor;

  /// 圆角度数
  final double radius;

  /// tag横向间距
  final double spacing;

  /// tag纵向间距
  final double runSpacing;

  /// 点击回调
  final TagClick? onTap;

  /// 自定义Tag
  TagBuilder? builder;

  TagView({
    Key? key,
    required this.tags,
    this.margin,
    this.padding,
    this.width,
    this.tagHeight,
    this.itemPadding,
    this.itemStyle,
    this.backgroundColor,
    this.radius: 2,
    this.runSpacing: 10,
    this.spacing: 10,
    this.onTap,
    this.color,
    this.builder,
  }) : super(key: key) {
    /// 初始化默认值
    itemPadding = itemPadding ?? const EdgeInsets.fromLTRB(5, 2, 5, 2);
    itemStyle =
        itemStyle ?? TextStyle(color: const Color(0xFFF0441C), fontSize: 15.sp);
    color = color ?? const Color.fromRGBO(230, 230, 230, 0.5);
    padding =
        padding ?? const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0);
  }

  @override
  _TagViewState createState() => _TagViewState();
}

class _TagViewState extends State<TagView> {
  @override
  Widget build(BuildContext context) {
    if (widget.tags.isEmpty) return Container();
    return Material(
      color: Colors.transparent,
      child: Container(
        width: widget.width,
        color: widget.backgroundColor,
        margin: widget.margin,
        padding: widget.padding,
        child: Wrap(
          spacing: widget.spacing,
          runSpacing: widget.runSpacing,
          children: widget.tags.map((res) {
            int i = widget.tags.indexOf(res);
            return GestureDetector(
              onTap: widget.onTap == null
                  ? null
                  : () {
                      if (widget.onTap != null) {
                        widget.onTap!(i);
                      }
                    },
              child: widget.builder != null
                  ? Builder(
                      builder: (context) {
                        return widget.builder!(context, i);
                      },
                    )
                  : Row(
                      /// 为了处理container中设置了alignment宽度无限大的问题，这里使用row来包裹
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          height: widget.tagHeight,
                          padding: widget.itemPadding,
                          decoration: BoxDecoration(
                            color: widget.color,
                            borderRadius: BorderRadius.circular(widget.radius),
                          ),
                          child: Text(
                            widget.tags[i],
                            style: widget.itemStyle,
                          ),
                        )
                      ],
                    ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
