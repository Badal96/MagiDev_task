import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_devs_task/core/injector.dart';

class BasePage<T extends Bloc> extends StatelessWidget {
  final Widget child;
  const BasePage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<T>(),
      child: child,
    );
  }
}
