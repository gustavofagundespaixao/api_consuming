import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todo_list/models/item_model.dart';

class ItemService {
  Future<List<ItemModel>> get() async {
    var response = await http.get(
      'https://jsonplaceholder.typicode.com/photos',
    );

    if (response.statusCode == 200) {
      var items = (jsonDecode(response.body) as Iterable)
          .map((e) => ItemModel.fromJson(e))
          .toList();

      return items;
    } else
      throw Exception('Error');
  }
}
