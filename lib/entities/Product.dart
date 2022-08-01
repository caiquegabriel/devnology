class Product {
  
  String? _name;

  String? _thumbnail;

  List<String>? _photos;

  double? _price;

  String? _description;

  Product({
    String name = "",
    String thumbnail = "",
    List<String> photos = const [],
    double price = 0.00,
    String description = ""
  }) {
    _name = name;
    _thumbnail = thumbnail;
    _photos = [_thumbnail!] + photos;
    _price = price;
    _description = description;
  }

  String get name => _name!;

  String get thumbnail => _thumbnail!;

  List<String> get photos => _photos!;

  double get price => _price!;

  String get description => _description!;
}