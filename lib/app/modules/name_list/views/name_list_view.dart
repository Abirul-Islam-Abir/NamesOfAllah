import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/name_list_controller.dart';

class NameListView extends GetView<NameListController> {
  const NameListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NameListView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NameListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
