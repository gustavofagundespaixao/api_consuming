import 'package:flutter/material.dart';
import 'package:todo_list/controllers/item_controller.dart';
import 'package:todo_list/models/item_model.dart';
import 'package:todo_list/widgets/drawer_widget.dart';
import 'package:todo_list/widgets/erro_widget.dart';
import 'package:todo_list/widgets/item_widget.dart';
import 'package:todo_list/widgets/loading_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api consuming'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () => setState(() {}),
          ),
        ],
      ),
      drawer: DrawerWidget(),
      body: FutureBuilder<List<ItemModel>>(
        future: ItemController().get(),
        builder: (_, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return LoadingWidget();
            default:
              if (!snapshot.hasData) return ErroWidget();
              return ListView.separated(
                itemCount: snapshot.data.length,
                itemBuilder: (_, index) => ItemWidget(
                  model: snapshot.data[index],
                ),
                separatorBuilder: (_, index) => Divider(height: 0),
              );
          }
        },
      ),
    );
  }
}
