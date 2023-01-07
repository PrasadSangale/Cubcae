import 'dart:convert';

class Breed_info {
  final String name;
  final String information;
  final String link;

  Breed_info({this.name, this.information,this.link} );

  factory Breed_info.fromJson(Map<String, dynamic> json) {
    return Breed_info(
        name: json['name'],
        information:json['information'],
        link:json['link']
    );
  }

  Map<String, dynamic> toJson() => {
    'name' : name,
    'information':information,
    'link':link,
  };


}