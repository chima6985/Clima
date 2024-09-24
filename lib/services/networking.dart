import 'dart:convert';
// import 'dart:developer';
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper({required this.url});

  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;
      // log(response.body.toString());

      var decodeData = jsonDecode(data);

      return decodeData;
    } else {
      // log(response.statusCode.toString());
    }
  }
}
