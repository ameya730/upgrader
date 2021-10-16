// To parse this JSON data, do
//
//     final projectList = projectListFromJson(jsonString);

import 'dart:convert';

List<ProjectList> projectListFromJson(String str) => List<ProjectList>.from(
    json.decode(str).map((x) => ProjectList.fromJson(x)));

String projectListToJson(List<ProjectList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProjectList {
  ProjectList({
    this.id,
    this.projectName,
    this.projectDescription,
    this.startDate,
    this.endDate,
    this.projectPhoto,
    this.projectStatus,
  });

  int? id;
  String? projectName;
  String? projectDescription;
  String? startDate;
  String? endDate;
  String? projectPhoto;
  String? projectStatus;

  factory ProjectList.fromJson(Map<String, dynamic> json) => ProjectList(
        id: json["id"],
        projectName: json["projectName"],
        projectDescription: json["projectDescription"],
        startDate: json["startDate"],
        endDate: json["endDate"],
        projectPhoto: json["projectPhoto"],
        projectStatus: json["projectStatus"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "projectName": projectName,
        "projectDescription": projectDescription,
        "startDate": startDate,
        "endDate": endDate,
        "projectPhoto": projectPhoto,
        "projectStatus": projectStatus,
      };
}
