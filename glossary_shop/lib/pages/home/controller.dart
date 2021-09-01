import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:glossary_shop/models/category.model.dart';
import 'package:glossary_shop/models/product.model.dart';
import 'package:glossary_shop/utils/json.dart';

import '../../controller.dart';

class HomeController extends GetxController {
  AppController appController = Get.find();
  RxList<CategoryModel> categories = RxList<CategoryModel>([]);
  RxList<ProductModel> products = RxList<ProductModel>([]);
  Rx<CategoryModel> _selectedCategory =
      Rx<CategoryModel>(CategoryModel(key: "", name: "", color: ""));

  CategoryModel get selectedCategory => _selectedCategory.value;

  int get cartQuantity {
    return appController.cartItems.length;
  }

  HomeController() {
    loadCategories();
  }

  loadCategories() async {
    //Load categories
    List<dynamic> dataCategories = await loadJson(
      "assets/data/categories.json",
    );
    categories.addAll(dataCategories
        .map<CategoryModel>((category) => CategoryModel(
              key: category["key"],
              name: category["name"],
              color: category["color"],
            ))
        .toList());
    selectCategory(categories.first);
  }

  selectCategory(CategoryModel category) async {
    _selectedCategory.value = category;
    List<dynamic> dataProducts = await loadJson(
      "assets/data/products.json",
    );
    products.value = dataProducts
        .where((item) => item["category"] == category.key)
        .map<ProductModel>((product) => ProductModel(
              id: product["id"],
              name: product["name"],
              category: product["category"],
              price: product["price"],
              image: product["image"],
              description: product["description"],
            ))
        .toList();
  }
}
