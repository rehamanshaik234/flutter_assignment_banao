import 'dart:convert';

/// createdAt : "2022-11-05T10:25:03.103Z"
/// name : "Ergonomic Concrete Car"
/// category : "Music"
/// lesson : 62
/// id : "1"

ModelProgram modelProgramFromJson(String str) => ModelProgram.fromJson(json.decode(str));
String modelProgramToJson(ModelProgram data) => json.encode(data.toJson());
class ModelProgram {
  ModelProgram({
      String? createdAt, 
      String? name, 
      String? category, 
      num? lesson, 
      String? id,}){
    _createdAt = createdAt;
    _name = name;
    _category = category;
    _lesson = lesson;
    _id = id;
}

  ModelProgram.fromJson(dynamic json) {
    _createdAt = json['createdAt'];
    _name = json['name'];
    _category = json['category'];
    _lesson = json['lesson'];
    _id = json['id'];
  }
  String? _createdAt;
  String? _name;
  String? _category;
  num? _lesson;
  String? _id;

  String? get createdAt => _createdAt;
  String? get name => _name;
  String? get category => _category;
  num? get lesson => _lesson;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['createdAt'] = _createdAt;
    map['name'] = _name;
    map['category'] = _category;
    map['lesson'] = _lesson;
    map['id'] = _id;
    return map;
  }

}
