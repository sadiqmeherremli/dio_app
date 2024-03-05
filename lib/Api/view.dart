import 'package:dio_ap/Api/provider/dio_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class View extends StatelessWidget {
  const View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dio App')),
      body: Consumer<DioProvider>(
        builder: (context, provider, child) {
          
          return  Center(
            child: Text(provider.items.first.data?.id.toString() ?? " empty"),
          );
        },
      ),
    );
  }
}
