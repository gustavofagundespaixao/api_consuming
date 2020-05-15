import 'package:flutter/material.dart';
import 'package:todo_list/models/item_model.dart';

class ItemWidget extends StatelessWidget {
  final ItemModel model;

  const ItemWidget({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(model.thumbnailUrl)),
      title: Text(model.title, overflow: TextOverflow.ellipsis),
      subtitle: Text(model.thumbnailUrl, overflow: TextOverflow.ellipsis),
    );
  }
}
