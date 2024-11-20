// To parse this JSON data, do
//
//     final productItem = productItemFromJson(jsonString);

import 'dart:convert';

ProductItem productItemFromJson(String str) =>
    ProductItem.fromJson(json.decode(str));

String productItemToJson(ProductItem data) => json.encode(data.toJson());

class ProductItem {
  String model;
  String pk;
  Fields fields;

  ProductItem({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory ProductItem.fromJson(Map<String, dynamic> json) => ProductItem(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  int user;
  String name;
  int price;
  String category;
  String description;

  Fields({
    required this.user,
    required this.name,
    required this.price,
    required this.category,
    required this.description,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        category: json["category"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "category": category,
        "description": description,
      };
}
