class VoBasicDetails {
  int? id;
  String? vOName;
  String? vODescription;
  String? district;
  String? city;
  String? vOEmailID;
  String? contactNumber;
  String? vOPhoto;
  String? certificateType;
  String? registrationNumber;

  VoBasicDetails(
      {this.id,
      this.vOName,
      this.vODescription,
      this.district,
      this.city,
      this.vOEmailID,
      this.contactNumber,
      this.vOPhoto,
      this.certificateType,
      this.registrationNumber});

  VoBasicDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vOName = json['vOName'];
    vODescription = json['vODescription'];
    district = json['district'];
    city = json['city'];
    vOEmailID = json['vOEmailID'];
    contactNumber = json['contactNumber'];
    vOPhoto = json['vOPhoto'];
    certificateType = json['certificateType'];
    registrationNumber = json['registrationNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['vOName'] = this.vOName;
    data['vODescription'] = this.vODescription;
    data['district'] = this.district;
    data['city'] = this.city;
    data['vOEmailID'] = this.vOEmailID;
    data['contactNumber'] = this.contactNumber;
    data['vOPhoto'] = this.vOPhoto;
    data['certificateType'] = this.certificateType;
    data['registrationNumber'] = this.registrationNumber;
    return data;
  }
}
