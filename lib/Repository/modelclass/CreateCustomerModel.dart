class CreateCustomerModel {
  String? name;
  String? mobile;
  String? email;
  String? opBalance;
  String? creditLimit;

  CreateCustomerModel({
    this.name,
    this.mobile,
    this.email,
    this.opBalance,
    this.creditLimit,
  });

  factory CreateCustomerModel.fromJson(Map<String, dynamic> json) {
    return CreateCustomerModel(
      name: json['name'],
      mobile: json['mobile'],
      email: json['email'],
      opBalance: json['op_balance'],
      creditLimit: json['cred_limit'],
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['mobile'] = mobile;
    map['email'] = email;
    map['op_balance'] = opBalance;
    map['cred_limit'] = creditLimit;
    return map;
  }
}
