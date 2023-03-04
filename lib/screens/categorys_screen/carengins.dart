import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modals/constant.dart';
import '../../modals/product_list.dart';
import 'daetels_view.dart';

class engin extends StatefulWidget {
  String? value;
  String? year;
  engin({
    this.value,
    this.year,
  });

  @override
  State<engin> createState() => _enginState(value, year);
}

class _enginState extends State<engin> {
  String? value;
  String? year;
  _enginState(this.value, this.year);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductView>(
      init: Get.put(ProductView(carmodal: value, yearmade: year)),
      builder: (controller) => controller.havevalue.value
          ? Scaffold(
              body: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/delivery1.png',
                    scale: 3,
                  ),
                  Text(
                    'لا توجد منتجات حاليا',
                    style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )),
              appBar: AppBar(
                backgroundColor: Color.fromARGB(255, 17, 0, 114),
                title: Text(
                  'محركات',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          : controller.loading.value
              ? Scaffold(body: Center(child: CircularProgressIndicator()))
              : Scaffold(
                  appBar: AppBar(
                    backgroundColor: Color.fromARGB(255, 17, 0, 114),
                    title: Text(
                      'محركات',
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  body: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 0.6),
                      itemCount: controller.product.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              SizedBox(height: 12),
                              Directionality(
                                textDirection: TextDirection.rtl,
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(DetailsView(
                                      model: controller.product[index],
                                    ));
                                  },
                                  child: Container(
                                    height: 250,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 196, 196, 196)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 130,
                                          child: CachedNetworkImage(
                                            imageUrl: controller
                                                .product[index].imageUrl!,
                                            placeholder: (context, url) => Center(
                                                child:
                                                    CircularProgressIndicator()),
                                          ),
                                        ),
                                        Divider(
                                          color: Color.fromARGB(
                                              255, 172, 172, 172),
                                          thickness: 0.5,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 8.0,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  SizedBox(width: 5),
                                                  Text(
                                                    'بلد الصنع ${controller.product[index].contry!}',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontFamily: 'Cairo',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255, 224, 168, 0)),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                controller
                                                    .product[index].pname!,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: 'Cairo',
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'دينار',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontFamily: 'Cairo',
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    controller
                                                        .product[index].price!,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontFamily: 'Cairo',
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
    );
  }
}

class ProductView extends GetxController {
  String? yearmade;
  String? carmodal;

  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  ValueNotifier<bool> get havevalue => _havevalue;
  ValueNotifier<bool> _havevalue = ValueNotifier(false);

  List<Product> get product => _product;
  List<Product> _product = [];

  CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection(kcollection);

  ProductView({this.carmodal, this.yearmade}) {
    getCollection();
  }

  getCollection() async {
    _loading.value = true;
    await _collectionReference
        .where(kcategory, isEqualTo: 'محركات')
        .where(kyear, isEqualTo: yearmade)
        .where(kcartype, isEqualTo: carmodal)
        .get()
        .then((value) {
      if (value.docs.length == 0) {
        _havevalue.value = true;
        _loading.value = false;
      } else {
        for (int i = 0; i < value.docs.length; i++) {
          _product.add(
              Product.fromJson(value.docs[i].data() as Map<dynamic, dynamic>));

          _loading.value = false;
        }
      }
      update();
    });
  }
}
