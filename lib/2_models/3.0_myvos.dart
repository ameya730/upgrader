// To parse this JSON data, do
//
//     final myVOs = myVOsFromJson(jsonString);

import 'dart:convert';

List<MyVOs> myVOsFromJson(String str) =>
    List<MyVOs>.from(json.decode(str).map((x) => MyVOs.fromJson(x)));

String myVOsToJson(List<MyVOs> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MyVOs {
  MyVOs({
    this.id,
    this.projectName,
  });

  int? id;
  String? projectName;

  factory MyVOs.fromJson(Map<String, dynamic> json) => MyVOs(
        id: json["id"],
        projectName: json["projectName"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "projectName": projectName,
      };
}
