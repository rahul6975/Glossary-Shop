import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:glossary_shop/utils/colors.dart';
import 'package:glossary_shop/widgets/appbar_action.dart';
import 'package:glossary_shop/widgets/custom_appbar.dart';
import '../../controller.dart';
import 'controller.dart';
import 'widgets/cart_list.dart';
import 'widgets/cart_total.dart';

class Cart extends StatelessWidget {
  AppController appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      init: CartController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.LIGHT,
          appBar: CustomAppBar(
            "Cart",
            leadings: [
              CustomAppBarAction(
                () => Get.back(),
                Feather.arrow_left,
                quantity: appController.cartItems.length,
              )
            ],
          ),
          body: CartList(),
          bottomNavigationBar: CartTotal(),
        );
      },
    );
  }
}
