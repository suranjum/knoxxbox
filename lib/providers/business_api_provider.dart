import 'package:http/http.dart' as http;

import '../helpers/constants.dart';

class BusinessApiProvider {
  static Future<String> signInApi(Map post) async {
    try {
      String url = '$kBaseUrl/business/signin';
      var response = await http.Client().post(Uri.parse(url), body: post);
      if (response.statusCode == 200) {
        String result = response.body;
        return result;
      } else {
        return '${response.statusCode}: ${response.body}';
      }
    } catch (e) {
      return 'Exception: ${e.toString()}';
    }
  }
}
