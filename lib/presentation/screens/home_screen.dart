import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_test/enum_routes.dart';
import 'package:personal_test/presentation/blocs/user_info_cubit/user_info_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () {
            final extra = context.read<UserInfoCubit>();
            context.push(EnumRoutes.detail.toPath,extra: extra);
          },
          child: Text('버튼'),
        ),
      ),
    );
  }
}
