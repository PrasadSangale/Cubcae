import 'dart:convert';

class Places {
  final String name;
  final String Open_time;
  final String Close_time;
  final String Address;
  final String link;


  Places({this.name, this.Open_time,this.Close_time, this.Address,this.link} );

  factory Places.fromJson(Map<String, dynamic> json) {
    return Places(
      name: json['name'],
      Open_time: json['Open_time'],
      Close_time: json['Close_time'],
      Address: json['Address'],
        link:json['link']
    );
  }

  Map<String, dynamic> toJson() => {
    'name' : name,
    'Open_time': Open_time,
    'Close_time':Close_time,
    'Address': Address,
    'link':link,
  };


}