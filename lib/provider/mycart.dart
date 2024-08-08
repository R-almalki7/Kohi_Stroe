

import 'package:flutter/material.dart';
import 'package:my_project/model/item.dart';


class Cart with ChangeNotifier{
  //double Total;
  int price = 0;
List Selected = [

];

addProduct(Item product){
Selected.add(product);
price += product.price.round();
notifyListeners();
}

removeProduct(Item product){
Selected.remove(product);
price -= product.price.round();
notifyListeners();
}
}