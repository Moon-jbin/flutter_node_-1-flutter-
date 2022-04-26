import 'package:flutter/material.dart';
import 'package:flutter_nodejs_mysql/jsonFIle/jsondata.dart';
import 'package:http/http.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  getJsonData() async {
    // 선택적을 jsonData를 받는 함수이다.
    var jsonData = await JsonData().getData();
    return jsonData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getJsonData(),
        builder: (BuildContext context, AsyncSnapshot snap) {
          if (!snap.hasData) return const CircularProgressIndicator();
          return ListView.builder(
            itemCount: snap.data.length,
            itemBuilder: (BuildContext context, int index) => ListTile(
              leading: Text(snap.data[index]['id'].toString()),
              title: Text(snap.data[index]['name'].toString()),
              trailing: IconButton(
                icon: const Icon(Icons.keyboard_arrow_right),
                onPressed: () {
                  return print(snap.data[index]['name'].toString());
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
