import 'package:http/http.dart' as http;
import 'dart:convert';

class JsonData {
  Future<dynamic> getData() async {
    http.Response res = await http.get(
      Uri.parse("http://192.168.0.11:3000/"),
      headers: {"user-header": "1234"},
    );
    if (res.statusCode == 200) {
      String data = res.body;
      return jsonDecode(data);
    } else {
      print(res.statusCode);
    }
  }
}

// JsonData 자체를 몸통으로 둔다고 생각하자.
// 모든 데이터는 이 클래스에서 받지만 선택적으로 받는건
// 해당 페이지 dart파일에 들어가서 선택적으로 받자.
