// class Users {
//   List<Employees>? employees;
//
//   Users({this.employees});
//
//   Users.fromJson(Map<String, dynamic> json) {
//     if (json['employees'] != null) {
//       employees = <Employees>[];
//       json['employees'].forEach((v) {
//         employees!.add(new Employees.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.employees != null) {
//       data['employees'] = this.employees!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Employees {
//   String? emailId;
//   String? name;
//   String? empId;
//   String? id;
//   //String? loginLocation,
//   String? loginAddress;
//   String?  LoginTime;
//   String? LoginDate;
//
//   Employees({this.emailId, this.name, this.empId, this.id,this.loginAddress, this.LoginDate,this.LoginTime});
//
//   Employees.fromJson(Map<String, dynamic> json) {
//     emailId = json['emailId'];
//     name = json['name'];
//     empId = json['empId'];
//     id = json['id'];
//
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['emailId'] = this.emailId;
//     data['name'] = this.name;
//     data['empId'] = this.empId;
//     data['id'] = this.id;
//     data['loginLocation']=this.loginAddress;
//     data['loginTime']=this.LoginTime;
//     data['loginDate']=this.LoginDate;
//     return data;
//   }
// }