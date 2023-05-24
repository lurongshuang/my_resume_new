import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// @description 作用:图片懒加载
// @date: 2021/11/3
// @author: 卢融霜

class LazyLoadImageWidget extends StatelessWidget {
  String url;
  double? width;
  double? height;
  Alignment? alignment;
  BoxFit? fit;

  LazyLoadImageWidget(this.url,
      {this.width, this.height, this.alignment, this.fit, key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int maxHeightDiskCache = 640;
    int maxWidthDiskCache = 360;
    if (width == height) {
      maxHeightDiskCache = 200;
      maxWidthDiskCache = 200;
    }
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      alignment: alignment ?? Alignment.center,
      cacheKey: url,
      maxHeightDiskCache: maxHeightDiskCache,
      maxWidthDiskCache: maxWidthDiskCache,
      progressIndicatorBuilder: (context, url, downloadProgress) => Container(
        width: width,
        height: height,
        color: const Color(0xfff2f2f2),
      ),
      errorWidget: (context, url, error) {
        return Icon(Icons.error);
      },
      fit: this.fit ?? BoxFit.cover,
    );
  }
}
