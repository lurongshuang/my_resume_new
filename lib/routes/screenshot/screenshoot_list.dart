import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_resume/base/base_routes_widget.dart';
import 'package:my_resume/data/project_data.dart';
import 'package:my_resume/widget/lazy_load_image_widget.dart';
import 'package:my_resume/widget/show_image_widget.dart';

// @description 作用:截图列表
// @date: 2021/12/2
// @author: 卢融霜

class ScreenshootList extends StatefulWidget {
  ProjectBean projectBean;

  ScreenshootList(this.projectBean, {Key? key}) : super(key: key);

  @override
  _ScreenshootListState createState() => _ScreenshootListState();
}

class _ScreenshootListState extends State<ScreenshootList>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseRoutesWidget(
      title: "截图",
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10.r,
        crossAxisSpacing: 10.r,
        childAspectRatio: 0.5,
        padding: EdgeInsets.all(10.r),
        children: [
          for (ScreenBean screen in widget.projectBean.screenList)
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShowImageWidget(
                      images: widget.projectBean.screenList
                          .map((e) => e.imgUrl)
                          .toList(),
                      currentIndex:
                          widget.projectBean.screenList.indexOf(screen),
                    ),
                  ),
                );
              },
              child: Hero(
                  tag: "tag${widget.projectBean.screenList.indexOf(screen)}",
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.r)),
                        border: Border.all(
                            width: 0.4.r, color: const Color(0xffd6d6d6))),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                      child: LazyLoadImageWidget(
                        screen.imgUrl,
                      ),
                    ),
                  )),
            )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
