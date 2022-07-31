class Product {
  
  String? _name;

  String? _thumbnail;

  List<String>? _photos;

  Category({
    String name = "",
    String thumbnail = "",
    List<String> photos = const []
  }) {
    _name = name;
    _thumbnail = thumbnail;
    _photos = [_thumbnail!] + _photos!;
  }

  String get name => _name!;

  String get thumbnail => _thumbnail!;

  List<String> get photos => _photos!;
}