import 'dart:convert';

import 'constant.dart';

class ADS {
  String? adsname;
  String? oldprice;
  String? newprice;
  String? adsdiscreption;
  String? adsimageUrl;
  String? adspersentage;

  ADS(
      {this.adsname,
      this.newprice,
      this.oldprice,
      this.adsdiscreption,
      this.adsimageUrl,
      this.adspersentage});

  ADS.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    adsname = map[kadsname];
    oldprice = map[kadsoldprice];
    newprice = map[kadsnewprice];
    adsdiscreption = map[kadsdiscreption];
    adsimageUrl = map[kadsimageUrl];
    adspersentage = map[kadspersentage];
  }
  toJson() {
    return {
      kadsname: adsname,
      kadsoldprice: oldprice,
      kadsnewprice: newprice,
      kadsdiscreption: adsdiscreption,
      kadsimageUrl: adsimageUrl,
      kadspersentage: adspersentage
    };
  }
}
