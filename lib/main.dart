import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_website/presentation/cubits/section_cubit.dart';
import 'package:my_portfolio_website/presentation/view/home.dart';
import 'package:my_portfolio_website/utils/theme_manager.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeManager()),
        BlocProvider(create: (context) => SectionCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeManager>(
      builder: (context, themeManager, child) {
        return MaterialApp(
          title: 'Shakleen Ishfar - Portfolio',
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: themeManager.themeMode,
          home: const Home(),
        );
      },
    );
  }
}
