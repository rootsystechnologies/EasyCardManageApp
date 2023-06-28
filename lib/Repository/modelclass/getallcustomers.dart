class Getallcustomers {
  Getallcustomers({
      this.customers,});

  Getallcustomers.fromJson(dynamic json) {
    customers = json['customers'] != null ? Customers.fromJson(json['customers']) : null;
  }
  Customers? customers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (customers != null) {
      map['customers'] = customers?.toJson();
    }
    return map;
  }

}

class Customers {
  Customers({
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

  Customers.fromJson(dynamic json) {
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
      this.name, 
      this.mobile, 
      this.email, 
      this.emailVerifiedAt, 
      this.addedBy, 
      this.createdAt, 
      this.updatedAt, 
      this.deletedAt, 
      this.wallet, 
      this.permissions,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    addedBy = json['added_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    wallet = json['wallet'] != null ? Wallet.fromJson(json['wallet']) : null;
    if (json['permissions'] != null) {
      permissions = [];
      json['permissions'].forEach((v) {
        permissions?.add(Permissions.fromJson(v));
      });
    }
  }
  int? id;
  String? name;
  String? mobile;
  String? email;
  dynamic emailVerifiedAt;
  int? addedBy;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  Wallet? wallet;
  List<Permissions>? permissions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['mobile'] = mobile;
    map['email'] = email;
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

class Permissions {
  Permissions({
      this.id, 
      this.userId, 
      this.permissionId, 
      this.createdAt, 
      this.updatedAt, 
      this.permission,});

  Permissions.fromJson(dynamic json) {
    id = json['id'];
    userId = json['user_id'];
    permissionId = json['permission_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    permission = json['permission'] != null ? Permission.fromJson(json['permission']) : null;
  }
  int? id;
  int? userId;
  int? permissionId;
  String? createdAt;
  String? updatedAt;
  Permission? permission;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['user_id'] = userId;
    map['permission_id'] = permissionId;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (permission != null) {
      map['permission'] = permission?.toJson();
    }
    return map;
  }

}

class Permission {
  Permission({
      this.id, 
      this.code, 
      this.createdAt, 
      this.updatedAt,});

  Permission.fromJson(dynamic json) {
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