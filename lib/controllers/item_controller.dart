import 'package:todo_list/models/item_model.dart';
import 'package:todo_list/services/item_service.dart';

class ItemController {
  Future<List<ItemModel>> get() async => await ItemService().get();
}
