import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';

class ErroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Error', style: context.textTheme.headline6));
  }
}
