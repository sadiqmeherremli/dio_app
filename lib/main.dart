
import 'package:dio_ap/Api/provider/dio_provider.dart';
import 'package:dio_ap/Api/ap_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DioProvider(),
      child: MaterialApp(
        title: '',
        theme: ThemeData(
          
          
        ),
        home: const ApView(),
      ),
    );
  }
}



