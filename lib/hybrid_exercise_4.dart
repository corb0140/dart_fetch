import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async {
  try {
    final url = Uri.parse('https://random-data-api.com/api/v2/users?size=5');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var dataJson = convert.jsonDecode(response.body);

      for (var data in dataJson) {
        print(
            "firstname: ${data['first_name']}, lastname: ${data['last_name']}, uid: ${data['uid']}");
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  } catch (err) {
    print('Error: $err');
  }
}
