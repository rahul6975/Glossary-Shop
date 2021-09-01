import 'package:get/get.dart';

class ProductModel {
  ProductModel({
    required int id,
    required String name,
    required String category,
    required double price,
    required String image,
    required String description,
  }) {
    this.id = id;
    this.name = name;
    this.category = category;
    this.price = price;
    this.image = image;
    this.description = description;
    this.like = false;
  }

  RxInt _id = RxInt(0);

  set id(int value) => _id.value = value;

  int get id => _id.value;

  RxString _name = RxString("");

  set name(String value) => _name.value = value;

  String get name => _name.value;

  RxString _category = RxString("");

  set category(String value) => _category.value = value;

  String get category => _category.value;

  RxDouble _price = RxDouble(0.0);

  set price(double value) => _price.value = value;

  double get price => _price.value;

  RxString _image = RxString("");

  set image(String value) => _image.value = value;

  String get image => _image.value;

  RxString _description = RxString("");

  set description(String value) => _description.value = value;

  String get description => _description.value;

  RxBool _like = RxBool(true);

  set like(bool value) => _like.value = value;

  bool get like => _like.value;

  String get dollar {
    return "₹ " + this.price.toStringAsFixed(2);
  }
}
