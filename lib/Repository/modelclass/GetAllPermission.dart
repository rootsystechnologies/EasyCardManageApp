class GetAllPermission {
  GetAllPermission({
      this.perms,});

  GetAllPermission.fromJson(dynamic json) {
    if (json['perms'] != null) {
      perms = [];
      json['perms'].forEach((v) {
        perms?.add(Perms.fromJson(v));
      });
    }
  }
  List<Perms>? perms;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (perms != null) {
      map['perms'] = perms?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Perms {
  Perms({
      this.id, 
      this.code, 
      this.createdAt, 
      this.updatedAt,});

  Perms.fromJson(dynamic json) {
    id = json['id'];
    code = json['code'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? code;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['code'] = code;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}