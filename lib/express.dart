

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: "initial")
enum Express {
  general('G'),
  direct('D');

  final String initial;

  const Express(this.initial);
}


