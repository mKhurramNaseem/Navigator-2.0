import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigator_2_base/navigation/my_route_information_parser.dart';
import 'package:navigator_2_base/navigation/my_router_delegate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const title = 'Navigator 2.0';
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
          bodySmall: GoogleFonts.ebGaramond(
            textStyle: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 30,
              fontWeight: FontWeight.normal,
            ),
          ),
          bodyMedium: GoogleFonts.ebGaramond(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.pink,
        ),
      ),
      routeInformationParser: MyRouteInformationParser(),
      routerDelegate: MyRouterDelegate(),
    );
  }
}
