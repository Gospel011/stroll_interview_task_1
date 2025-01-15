import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stroll/presentation/pages/go_router_config.dart';
import 'package:stroll/utils/themes/light_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final String path = (await getApplicationDocumentsDirectory()).path;
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(
    path,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final AppRouterConfig routerConfig = AppRouterConfig();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: Builder(builder: (context) {
        return MaterialApp.router(
          title: 'Schoolspace',
          debugShowCheckedModeBanner: false,
          theme: AppThemes.darkTheme,
          themeMode: ThemeMode.dark,
          routerConfig: routerConfig.router,
        );
      }),
    );
  }
}
