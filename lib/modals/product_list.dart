import 'dart:convert';

import 'constant.dart';

class Product {
  String? carmodal;
  String? cartype;
  String? year;
  String? category;
  String? pname;
  String? price;
  String? discreption;
  String? imageUrl;
  String? contry;
  Product(
      {this.carmodal,
      this.cartype,
      this.year,
      this.category,
      this.pname,
      this.price,
      this.discreption,
      this.contry,
      this.imageUrl});

  Product.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    carmodal = map[kcarmodal];
    cartype = map[kcartype];
    year = map[kyear];
    category = map[kcategory];
    pname = map[kname];
    price = map[kprice];
    discreption = map[kdiscreption];
    imageUrl = map[kimageUrl];
    contry = map[kcontry];
  }
  toJson() {
    return {
      kcarmodal: carmodal,
      kcartype: cartype,
      kyear: year,
      kcategory: category,
      kname: pname,
      kprice: price,
      kdiscreption: discreption,
      kimageUrl: imageUrl,
      kcontry: contry
    };
  }
}
