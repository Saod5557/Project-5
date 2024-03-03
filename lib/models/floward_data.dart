class BrandData {
  BrandData({
    required this.ID,
    required this.img,
  });
  late final int ID;
  late final String img;
  
  BrandData.fromJson(Map<String, dynamic> json){
    ID = json['ID'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ID'] = ID;
    _data['img'] = img;
    return _data;
  }
}

class FlowardsData {
  FlowardsData({
    required this.ID,
    required this.title,
    required this.field,
    required this.description,
    required this.caretips,
    required this.price,
    required this.img,
  });
  late final int ID;
  late final String title;
  late final String field;
  late final String description;
  late final String caretips;
  late final String price;
  late final String img;
  
  FlowardsData.fromJson(Map<String, dynamic> json){
    ID = json['ID'];
    title = json['title'];
    field = json['field'];
    description = json['description'];
    caretips = json['caretips'];
    price = json['price'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ID'] = ID;
    _data['title'] = title;
    _data['field'] = field;
    _data['price'] = price;
    _data['description'] = description;
    _data['caretips'] = caretips;
    _data['img'] = img;
    return _data;
  }
}


class CategoriesData {
  CategoriesData({
    required this.ID,
    required this.title,
    required this.img,
  });
  late final int ID;
  late final String title;
  late final String img;
  
  CategoriesData.fromJson(Map<String, dynamic> json){
    ID = json['ID'];
    title = json['title'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ID'] = ID;
    _data['title'] = title;
    _data['img'] = img;
    return _data;
  }
}

class NewFlowardsData {
  NewFlowardsData({
    required this.ID,
    required this.title,
    required this.field,
    required this.description,
    required this.caretips,
    required this.price,
    required this.img,
  });
  late final int ID;
  late final String title;
  late final String field;
  late final String description;
  late final String caretips;
  late final String price;
  late final String img;
  
  NewFlowardsData.fromJson(Map<String, dynamic> json){
    ID = json['ID'];
    title = json['title'];
    field = json['field'];
    description = json['description'];
    caretips = json['caretips'];
    price = json['price'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ID'] = ID;
    _data['title'] = title;
    _data['field'] = field;
    _data['price'] = price;
    _data['description'] = description;
    _data['caretips'] = caretips;
    _data['img'] = img;
    return _data;
  }
}
