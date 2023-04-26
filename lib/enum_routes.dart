enum EnumRoutes {
  home,
  detail,
  detail2,
}

extension EnumRouteExtension on EnumRoutes {
  String get toPath => '/$name';
}
