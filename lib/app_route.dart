import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_test/enum_routes.dart';
import 'package:personal_test/presentation/blocs/user_info_cubit/user_info_cubit.dart';
import 'package:personal_test/presentation/screens/detail1_screen.dart';
import 'package:personal_test/presentation/screens/home_screen.dart';

import 'di.dart';

class AppRoute {
  static GoRouter get call {
    return GoRouter(
      initialLocation: EnumRoutes.home.toPath,
      routes: [
        GoRoute(
          path: EnumRoutes.home.toPath,
          builder: (context, _) {
            return MultiBlocProvider(
              providers: [
                BlocProvider<UserInfoCubit>(
                  create: (_) => sl(),
                ),
              ],
              child: const HomeScreen(),
            );
          },
        ),
        GoRoute(
          path: EnumRoutes.detail.toPath,
          builder: (context, state) {
            final extra = state.extra as UserInfoCubit?;
            late final BlocProvider bloc;
            if (extra == null) {
              bloc = BlocProvider<UserInfoCubit>(create: (_) => sl());
            } else {
              bloc = BlocProvider<UserInfoCubit>.value(value: extra);
            }

            return MultiBlocProvider(
              providers: [bloc],
              child: const Detail1Screen(),
            );
          },
        ),
      ],
    );
  }
}
