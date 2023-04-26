import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_test/presentation/blocs/user_info_cubit/user_info_cubit.dart';

GetIt sl = GetIt.instance;

class Di {
  static Future<List<BlocProvider>> get init async {
    sl.registerFactory<UserInfoCubit>(
      () => UserInfoCubit(),
    );

    return [
      BlocProvider<UserInfoCubit>(
        create: (_) => sl(),
      ),
    ];
  }
}
