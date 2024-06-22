import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:support_pkg/injection.config.dart';

final GetIt ii = GetIt.instance;

@InjectableInit()
void configureSupportDependencies(String env) => ii.init(environment: env);

Future<void> resetInjection() async {
  await ii.reset();
}
