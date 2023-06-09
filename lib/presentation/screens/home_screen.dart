import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_test/enum_routes.dart';
import 'package:personal_test/presentation/blocs/user_info_cubit/user_info_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      print(timeStamp);
      while (number < 10) {
        await Future.delayed(Duration(seconds: 1));

        number++;

        print(number);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () {
            final extra = context.read<UserInfoCubit>();
            context.go(EnumRoutes.detail.toPath, extra: extra);
          },
          child: Text('버튼'),
        ),
      ),
    );
  }
}
