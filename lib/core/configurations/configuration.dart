import 'package:injectable/injectable.dart';
import 'package:support_pkg/core/app_environment.dart';

abstract class Configuration {
  String get name;

  String get getImageBaseUrl;

  String get getBaseUrl;

  String get getSupportBaseUrl;
}

@LazySingleton(as: Configuration, env: [AppEnvironment.dev])
class DevConfiguration implements Configuration {
  @override
  String get getBaseUrl => 'https://dev-api-pos.catalogak.net/api/';
  @override
  String get name => 'development';

  @override
  String get getImageBaseUrl => 'http://stg-api-pos.catalogak.net/content/';

  @override
  String get getSupportBaseUrl => 'https://dev-api-support.catalogak.net/api/';
}

@LazySingleton(as: Configuration, env: [AppEnvironment.staging])
class StagingConfiguration implements Configuration {
  @override
  String get getBaseUrl => 'https://stg-api-pos.catalogak.net/api/';

  @override
  String get name => 'staging';

  @override
  String get getImageBaseUrl => '';

  @override
  // TODO: implement getSupportBaseUrl
  String get getSupportBaseUrl => 'https://stg-api-support.catalogak.net/api/';
}

@LazySingleton(as: Configuration, env: [AppEnvironment.prod])
class ProductionConfiguration implements Configuration {
  @override
  String get getBaseUrl => 'https://api-pos.catalogak.net/api/';

  @override
  String get name => 'production';

  @override
  String get getImageBaseUrl => '';

  @override
  // TODO: implement getSupportBaseUrl
  String get getSupportBaseUrl => 'https://api-support.catalogak.net/api/';
}
