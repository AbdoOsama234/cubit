import 'package:cubit/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( CubitApp(appRouter: AppRouter(),));
}

class CubitApp extends StatelessWidget {

  final AppRouter appRouter;
  const CubitApp({super.key, required this.appRouter});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,


    );
  }
}


