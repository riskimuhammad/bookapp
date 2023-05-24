import 'package:bookapp/feature/dashboarad/domain/repositories/local_repositori_impl.dart';
import 'package:flutter/material.dart';

import 'feature/dashboarad/presentation/pages/main_home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  localReposiroyImplementation.opendatabase();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitialApp(),
    );
  }
}

class InitialApp extends StatelessWidget {
  const InitialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
