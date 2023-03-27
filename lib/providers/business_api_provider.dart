import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:knoxxbox/models/business.dart';

import '../helpers/constants.dart';

class BusinessApiProvider {
  static Future<Map<String, dynamic>> signInApi(Map post) async {
    try {
      String url = '$kBaseUrl/business/signin';
      var response = await http.Client().post(Uri.parse(url), body: post);
      if (response.statusCode == 200) {
        String result = response.body;
        if (result.contains('business_id')) {
          final parsed = json.decode(result);

          return {
            'response': parsed['business']
                .map<Business>((json) => Business.fromJson(json))
                .toList(),
            'error': ''
          };
        } else {
          return {'response': null, 'error': result};
        }
      } else {
        final parsed = json.decode(response.body);
        return {'response': null, 'error': parsed['messages']['error']};
      }
    } catch (e) {
      return {'response': null, 'error': 'ERROR: ${e.toString()}'};
    }
  }
}
