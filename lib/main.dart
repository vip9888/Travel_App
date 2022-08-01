import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/pages/cubit/app_cubits.dart';
import 'package:flutter_cubit/pages/cubit/app_cubits_logic.dart';
import 'package:flutter_cubit/pages/detail_page.dart';
import 'package:flutter_cubit/pages/home_page.dart';
import 'package:flutter_cubit/pages/navbaar/bar_item_page.dart';
import 'package:flutter_cubit/pages/navbaar/main_page.dart';
import 'package:flutter_cubit/pages/navbaar/my_page.dart';
import 'package:flutter_cubit/pages/navbaar/search_page.dart';
import 'package:flutter_cubit/pages/welcome_page.dart';
import 'package:flutter_cubit/services/data_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(
          data: DataServices(),
        ),
        child: AppCubitsLogic(),
      ),
    );
  }
}
