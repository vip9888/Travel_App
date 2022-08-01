import 'dart:convert' show json;

import 'package:flutter_cubit/model/data_model.dart';
import 'package:http/http.dart' as http;

class DataServices {
  String baseUrl = "http://10.0.2.2:8000/api";

  // get json => null;
  Future<List<DataModel>> getInfo() async {
    var apiUrl = '/destinations';
    http.Response res = await http.get(Uri.parse(baseUrl + apiUrl));

    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
        print(list);
        return list.map((e) => DataModel.fromJson(e)).toList();
      } else {
        return <DataModel>[];
      }
    } catch (e) {
      print(e);
      return <DataModel>[];
    }
  }
}
