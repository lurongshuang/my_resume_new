List<EducationBean> educationList = [
  EducationBean(
      "中南财经政法大学",
      "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/5453d5e8-b816-4d8f-a3fa-6764cd7ce49d.jfif",
      "本科",
      "金融学",
      "2021",
      "2022", []),
  EducationBean(
      "国家开放大学",
      "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/5524ca32-bd50-4e88-810a-22fe765ee3e7.jfif",
      "专科",
      "计算机网络技术",
      "2019",
      "2022", []),
  EducationBean(
      "北京卓达经济管理研修学院",
      "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/0066e3af-90f8-48b8-9730-5a8e83471052.png",
      "专科",
      "计算机软件",
      "2012",
      "2014", []),
];

//教育经历
class EducationBean {
  String title;
  String img;
  String levelName;
  String majorName;
  String bTime;
  String eTime;
  List<String> imgList;

  EducationBean(this.title, this.img, this.levelName, this.majorName,
      this.bTime, this.eTime, this.imgList);
}
