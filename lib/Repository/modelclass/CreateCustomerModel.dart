class CreateCustomerModel {
  CreateCustomerModel({
      this.message, 
      this.user,});

  CreateCustomerModel.fromJson(dynamic json) {
    message = json['message'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String? message;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}

class User {
  User({
      this.name, 
      this.mobile, 
      this.email, 
      this.addedBy, 
      this.updatedAt, 
      this.createdAt, 
      this.id,});

  User.fromJson(dynamic json) {
    name = json['name'];
    mobile = json['mobile'];
    email = json['email'];
    addedBy = json['added_by'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }
  String? name;
  String? mobile;
  String? email;
  int? addedBy;
  String? updatedAt;
  String? createdAt;
  int? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['mobile'] = mobile;
    map['email'] = email;
    map['added_by'] = addedBy;
    map['updated_at'] = updatedAt;
    map['created_at'] = createdAt;
    map['id'] = id;
    return map;
  }

}