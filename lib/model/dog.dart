import 'dart:convert';

class DogInfos {
  final String? name;
  final String? Contact_info;
  final String? Address;
  final String? link;


  DogInfos({this.name, this.Contact_info, this.Address,this.link} );

  factory DogInfos.fromJson(Map<String, dynamic> json) {
    return DogInfos(
      name: json['name'],
      Contact_info: json['Contact_info'],
      Address: json['Address'],
        link:json['link']
    );
  }

  Map<String, dynamic> toJson() => {
    'name' : name,
    'Contact_info': Contact_info,
    'Address': Address,
    'link':link,
  };


}