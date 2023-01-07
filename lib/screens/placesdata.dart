import 'dart:convert';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class placesdata {
  String basUrl = "http://192.168.0.102/PlacesViewSet";
  Future<List> getAllplacesdta() async {
    try {
      var response = await http.get(Uri.parse(basUrl));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error('Server error');
      }
    } catch (e) {
      return Future.error(e);
    }
  }
}
