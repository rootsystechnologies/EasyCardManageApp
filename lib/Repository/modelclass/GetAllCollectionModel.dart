class GetAllCollectionModel {
  GetAllCollectionModel({
      this.collections,});

  GetAllCollectionModel.fromJson(dynamic json) {
    collections = json['collections'] != null ? Collections.fromJson(json['collections']) : null;
  }
  Collections? collections;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (collections != null) {
      map['collections'] = collections?.toJson();
    }
    return map;
  }

}

class Collections {
  Collections({
      this.currentPage, 
      this.data, 
      this.firstPageUrl, 
      this.from, 
      this.lastPage, 
      this.lastPageUrl, 
      this.links, 
      this.nextPageUrl, 
      this.path, 
      this.perPage, 
      this.prevPageUrl, 
      this.to, 
      this.total,});

  Collections.fromJson(dynamic json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = [];
      json['links'].forEach((v) {
        links?.add(Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }
  int? currentPage;
  List<Data>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  dynamic nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = currentPage;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    map['first_page_url'] = firstPageUrl;
    map['from'] = from;
    map['last_page'] = lastPage;
    map['last_page_url'] = lastPageUrl;
    if (links != null) {
      map['links'] = links?.map((v) => v.toJson()).toList();
    }
    map['next_page_url'] = nextPageUrl;
    map['path'] = path;
    map['per_page'] = perPage;
    map['prev_page_url'] = prevPageUrl;
    map['to'] = to;
    map['total'] = total;
    return map;
  }

}

class Links {
  Links({
      this.url, 
      this.label, 
      this.active,});

  Links.fromJson(dynamic json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }
  dynamic url;
  String? label;
  bool? active;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['label'] = label;
    map['active'] = active;
    return map;
  }

}

class Data {
  Data({
      this.id, 
      this.collectedAmount, 
      this.balanceToCollect, 
      this.userId, 
      this.createdAt, 
      this.updatedAt, 
      this.user,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    collectedAmount = json['collectedAmount'];
    balanceToCollect = json['balanceToCollect'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  int? id;
  String? collectedAmount;
  String? balanceToCollect;
  int? userId;
  String? createdAt;
  String? updatedAt;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['collectedAmount'] = collectedAmount;
    map['balanceToCollect'] = balanceToCollect;
    map['user_id'] = userId;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}

class User {
  User({
      this.id, 
      this.name, 
      this.mobile, 
      this.email, 
      this.place, 
      this.emailVerifiedAt, 
      this.addedBy, 
      this.createdAt, 
      this.updatedAt, 
      this.deletedAt, 
      this.wallet, 
      this.permissions,});

  User.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    email = json['email'];
    place = json['place'];
    emailVerifiedAt = json['email_verified_at'];
    addedBy = json['added_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    wallet = json['wallet'] != null ? Wallet.fromJson(json['wallet']) : null;
    if (json['permissions'] != null) {
      permissions = [];
      json['permissions'].forEach((v) {
        permissions?.add(v);
      });
    }
  }
  int? id;
  String? name;
  String? mobile;
  String? email;
  dynamic place;
  dynamic emailVerifiedAt;
  int? addedBy;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  Wallet? wallet;
  List<dynamic>? permissions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['mobile'] = mobile;
    map['email'] = email;
    map['place'] = place;
    map['email_verified_at'] = emailVerifiedAt;
    map['added_by'] = addedBy;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['deleted_at'] = deletedAt;
    if (wallet != null) {
      map['wallet'] = wallet?.toJson();
    }
    if (permissions != null) {
      map['permissions'] = permissions?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Wallet {
  Wallet({
      this.id, 
      this.userId, 
      this.balance, 
      this.creditLimit, 
      this.createdAt, 
      this.updatedAt,});

  Wallet.fromJson(dynamic json) {
    id = json['id'];
    userId = json['user_id'];
    balance = json['balance'];
    creditLimit = json['credit_limit'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  int? userId;
  String? balance;
  String? creditLimit;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['user_id'] = userId;
    map['balance'] = balance;
    map['credit_limit'] = creditLimit;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}