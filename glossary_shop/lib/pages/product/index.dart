import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:glossary_shop/utils/colors.dart';
import 'package:glossary_shop/widgets/appbar_action.dart';
import 'package:glossary_shop/widgets/custom_appbar.dart';
import 'package:glossary_shop/widgets/product_image.dart';
import '../../controller.dart';
import 'controller.dart';
import 'widgets/product_details.dart';

class Product extends StatelessWidget {
  AppController appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      init: ProductController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.LIGHT,
          appBar: CustomAppBar(
            "Product",
            leadings: [
              CustomAppBarAction(
                () => Get.back(),
                Feather.arrow_left,
                quantity: appController.cartItems.length,
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Obx(
                  () => ProductImage(
                    controller.product.image,
                    height: Get.width - 50,
                    padding: 25,
                    width: 30,
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Obx(() => ProductDetails(controller.product)),
        );
      },
    );
  }
}
