import 'package:dio_ap/Api/provider/dio_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ApView extends StatelessWidget {
  const ApView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dio App')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<DioProvider>().fetchPost();
        },
        child: const Icon(Icons.refresh),
      ),
      body: Consumer<DioProvider>(
        builder: (context, provider, child) {
          if (provider.items.isEmpty) {
            return const Center(
              child: Text("List is empty"),
            );
          }

          return Center(
            child: Text(provider.items.first.data?.id.toString() ?? "wrong "),
          );
        },
      ),
    );
  }
}

