import 'package:get_it/get_it.dart';
import 'package:google_maps/app_router.dart';

final injection = GetIt.instance;

void init() {
  injection.registerSingleton<AppRouter>(AppRouter());
}
