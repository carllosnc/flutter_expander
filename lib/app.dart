import 'package:flutter/material.dart';
import 'package:flutter_components/core/router/routes.gr.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp.router(
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(textTheme),
        useMaterial3: true,
        brightness: Brightness.light,
        dropdownMenuTheme: DropdownMenuThemeData(
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      title: 'Flutter Components',
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
