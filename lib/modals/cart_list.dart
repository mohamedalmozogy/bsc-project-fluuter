// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'constant.dart';

class Cartmodal {
  String? carmodal;
  String? cartype;
  String? year;
  String? category;
  String? pname;
  String? price;
  int? quntity;
  String? imageUrl;

  Cartmodal(
      {this.carmodal,
      this.cartype,
      this.year,
      this.category,
      this.pname,
      this.price,
      this.imageUrl,
      this.quntity});

  Cartmodal.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    quntity = map['quntity'];
    carmodal = map[kcarmodal];
    cartype = map[kcartype];
    year = map[kyear];
    category = map[kcategory];
    pname = map[kname];
    price = map[kprice];

    imageUrl = map[kimageUrl];
  }
  toJson() {
    return {
      kcarmodal: carmodal,
      kcartype: cartype,
      kyear: year,
      kcategory: category,
      kname: pname,
      kprice: price,
      kimageUrl: imageUrl,
      'quntity': quntity,
    };
  }
}
