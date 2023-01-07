
class Product {
  final String name;
  final String Price;
  final String link;

  Product({this.name, this.Price,this.link} );

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      Price:json['Price'],
        link:json['link']
    );
  }

  Map<String, dynamic> toJson() => {
    'name' : name,
    'Price':Price,
    'link':link,
  };


}