import 'dart:ffi';

class TaskModel {
  late List<Tasks> _tasks;
  List<Tasks> get tasks => _tasks;
  int? _total;
  int? _skip;
  int? _limit;

  TaskModel({required tasks, required total, required skip, required limit}) {
    _total = total;
    _skip = skip;
    _limit = limit;
    _tasks = tasks;
  }

  TaskModel.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      _tasks = <Tasks>[];
      json['tasks'].forEach((v) {
        tasks.add(Tasks.fromJson(v));
      });
    }
    _total = json['total'];
    _skip = json['skip'];
    _limit = json['limit'];
  }
}

class Tasks {
  int? id;
  String? title;
  String? description;
  int? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<String>? images;

  Tasks(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.discountPercentage,
      this.rating,
      this.stock,
      this.brand,
      this.category,
      this.thumbnail,
      this.images});

  Tasks.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    discountPercentage = json['discountPercentage'];
    rating = json['rating'];
    stock = json['stock'];
    brand = json['brand'];
    category = json['category'];
    thumbnail = json['thumbnail'];
    images = json['images'].cast<String>();
  }
}
