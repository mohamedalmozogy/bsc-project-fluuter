import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:provider/provider.dart';

import '../../modals/cart_item.dart';
import '../../modals/cart_list.dart';
import '../../modals/product_list.dart';

class DetailsView extends StatelessWidget {
  Product model;

  DetailsView({required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        child: GestureDetector(
          onTap: () {
            addToCart(context, model);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              child: Center(
                child: Text(
                  'اضف الى السلة',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w600),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                gradient:
                    LinearGradient(colors: [Colors.orangeAccent, Colors.red]),
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 270,
              child: CachedNetworkImage(
                imageUrl: model.imageUrl!,
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        model.pname!,
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'دينار',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 255, 154, 1)),
                          ),
                          Text(
                            model.price!,
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 255, 154, 1)),
                          ),
                        ],
                      ),
                      Text(
                        'الصنع: ${model.contry!}',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'توصيل خلال 1الى 3 ايام عمل ',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            Icons.local_shipping_rounded,
                            size: 22,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Text(
                        'الوصف',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        model.discreption!,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void addToCart(context, product) {
    CartItem cartItem = Provider.of<CartItem>(context, listen: false);

    bool exist = false;
    var productsInCart = cartItem.products;
    for (var productInCart in productsInCart) {
      if (productInCart.pname == product.pname) {
        exist = true;
      }
    }
    if (exist) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          'لقد تم اضافة المنتج سابقا!',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w500,
          ),
        ),
      ));
    } else {
      cartItem.addProduct(product);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          'تمت اضافة المنتج الى السلة',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w500,
          ),
        ),
      ));
    }
  }
}
