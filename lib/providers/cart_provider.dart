import 'package:flutter/cupertino.dart';

class CartProvider extends ChangeNotifier{
List<String> proproductList = [];
int proproductIndex = 0; 

void addProduct(){
  proproductIndex++;
  proproductList.add("Product${proproductIndex}");
  notifyListeners();
}
void removeProduct(){
  
  proproductList.removeLast();
  proproductIndex--;
  notifyListeners();
}

}