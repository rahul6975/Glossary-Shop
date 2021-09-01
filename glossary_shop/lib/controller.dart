import 'package:get/state_manager.dart';

import 'models/cart_item.model.dart';

class AppController extends GetxController{

  RxList<CartItemModel> cartItems = RxList<CartItemModel>([]);

}