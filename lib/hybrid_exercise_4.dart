import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
// import 'dart:async';

void main() async {
  try {
    final url = Uri.parse('https://random-data-api.com/api/users/random_user');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var data = convert.jsonDecode(response.body);
      print(data);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  } catch (err) {
    print('Error: $err');
  }
}
