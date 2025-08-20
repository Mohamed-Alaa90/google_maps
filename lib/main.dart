import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_maps/app_router.dart';
import 'package:google_maps/core/constant/route_name.dart';
import 'package:google_maps/firebase_options.dart';
import 'package:google_maps/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  init();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // get injected router

  @override
  Widget build(BuildContext context) {
    final _appRouter = injection<AppRouter>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _appRouter.generateRoute,
      initialRoute: RouteName.login,
    );
  }
}
