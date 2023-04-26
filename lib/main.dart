import 'package:flutter/material.dart';
import 'package:personal_test/di.dart';

import 'my_app.dart';

void main() async {
  await Di.init;

  /// SystemChrome : 운영 체제의 그래픽 인터페이스의 특정 측면과 애플리케이션과 상호 작용하는 방식을 제어합니다.
  runApp(const MyApp());
}
