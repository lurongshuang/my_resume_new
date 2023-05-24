import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// @description 作用:
// @date: 2021/12/1
// @author: 卢融霜

class ExpandableCountText extends StatefulWidget {
  final String text;
  final TextStyle textStyle;
  final int maxLines;

  ExpandableCountText(
      {required this.text,
      required this.textStyle,
      this.maxLines = 100,
      Key? key})
      : super(key: key);

  @override
  _ExpandableCountTextState createState() => _ExpandableCountTextState();
}

class _ExpandableCountTextState extends State<ExpandableCountText> {
  bool _showMore = false;
  bool _isExpended = false;

  TapGestureRecognizer _tapGestureRecognizer = TapGestureRecognizer();

  @override
  void initState() {
    super.initState();
    if (widget.text.length > widget.maxLines) {
      _showMore = true;
      _isExpended = false;
    } else {
      _showMore = false;
      _isExpended = true;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _tapGestureRecognizer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
          style: widget.textStyle,
          text: _isExpended
              ? widget.text
              : widget.text.substring(0, widget.maxLines) + '...'),
      TextSpan(
          recognizer: _tapGestureRecognizer
            ..onTap = () {
              setState(() {
                _isExpended = !_isExpended;
              });
            },
          text: _showMore
              ? _isExpended
                  ? '收起'
                  : '全文'
              : '',
          style: TextStyle(
              color: Colors.lightBlue, fontSize: widget.textStyle.fontSize))
    ]));
  }
}
