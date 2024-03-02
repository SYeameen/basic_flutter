import 'dart:ui';

import 'package:flutter/material.dart';


class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List items = [1, 2, 3];
  final now = Moment.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Board",
        style: TextStyle(fontWeight:FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: items.length,
          itemBuilder: (context, index){
          return Card()
          }),
    );
  }
}
