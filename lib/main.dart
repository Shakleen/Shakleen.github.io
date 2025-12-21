import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio_website/presentation/cubits/section_cubit.dart';
import 'package:my_portfolio_website/presentation/view/responsive_home_page.dart';
import 'package:my_portfolio_website/utils/constant.dart';
import 'package:my_portfolio_website/utils/hex_to_color.dart';
import 'package:my_portfolio_website/utils/theme_manager.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeManager()),
        BlocProvider(create: (context) => SectionCubit()),
      ],
      child: ScreenUtilInit(
        designSize: Size(1920, 1080),
        builder: (context, widget) => const MyApp(),
      ),
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
          title: appName,
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: hexToColor(seedColor),
              brightness: Brightness.light,
            ),
          ),
          // Customizing the Dark Theme
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: hexToColor(seedColor),
              brightness: Brightness.dark,
            ),
          ),
          themeMode: themeManager.themeMode,
          home: const ResponsiveHomePage(),
        );
      },
    );
  }
}
