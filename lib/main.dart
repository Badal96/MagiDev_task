import 'package:flutter/material.dart';
import 'package:magic_devs_task/core/bloc_base.dart';
import 'package:magic_devs_task/core/injector.dart';
import 'package:magic_devs_task/view/screens/feed_screen/bloc/feed_bloc.dart';

import 'package:magic_devs_task/view/widgets/home_page.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BasePage<FeedBloc>(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePageWithNavbar(),
      ),
    );
  }
}
