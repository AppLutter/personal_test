import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_state.freezed.dart';

@freezed
class UserInfoState with _$UserInfoState {
  const factory UserInfoState({
    @Default("홍길동") String name,
    @Default(0) int age,
  }) = _UserInfoState;

  factory UserInfoState.initial() {
    return const UserInfoState();
  }
}
