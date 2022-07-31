class Category {
  
  String? _name;

  String? _thumbnail;

  Category({
    String name = "",
    String thumbnail = ""
  }) {
    _name = name;
    _thumbnail = thumbnail;
  }

  String get name => _name!;

  String get thumbnail => _thumbnail!;

}