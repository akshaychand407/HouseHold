import 'package:flutter/material.dart';
import 'package:household/Model/product.dart';
import 'package:household/Model/productModel.dart';
import 'package:household/views/Body.dart';

import 'cart.dart';

class DetailsScreen extends StatelessWidget {
  final ProductModel product;
  const DetailsScreen({Key? key,required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3D82AE),
      appBar: buildAppBar(context),
      body: Body(product: product));
  }
  AppBar buildAppBar(BuildContext context) {
    const kDefaultPaddin = 20.0;
    const kTextLightColor = Color(0xFFACACAC);
    return AppBar(
      backgroundColor: Color(0xFF3D82AE),
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back,color: kTextLightColor,),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search,color: kTextLightColor,),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart,
          color: kTextLightColor,),
          onPressed: () =>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Cart()))
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}

