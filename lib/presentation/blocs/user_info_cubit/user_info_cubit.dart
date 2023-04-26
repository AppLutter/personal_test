import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_test/presentation/blocs/user_info_cubit/user_info_state.dart';

class UserInfoCubit extends Cubit<UserInfoState> {
  UserInfoCubit() : super(UserInfoState.initial());


  void changeState(){
    emit(state.copyWith(age:25));
  }
}
