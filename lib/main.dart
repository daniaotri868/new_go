import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled2/profile/profile_screen.dart';
import 'package:untitled2/start.dart';

import 'home/home_details_details_screen.dart';
import 'home/home_details_screen.dart';
import 'home/home_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
   static final _shellNavigatorKey = GlobalKey<NavigatorState>();
   static final _rootNavigatorKey = GlobalKey<NavigatorState>();

   GoRouter router =GoRouter(
     initialLocation: '/home',
       debugLogDiagnostics: true,
       navigatorKey: _rootNavigatorKey,
       routes: [
      ShellRoute(
          navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
            return Start(screen:child);
        } ,
        routes: [
          GoRoute(
              path: '/home',
              name: 'home',
              builder: (context, state) => HomeScreen(),
              routes: [
                GoRoute(
                    path: 'details',
                    name: 'details',
                    builder: (context, state) => HomeDetailsScreen(),
                    routes: [
                      GoRoute(
                        path: 'double',
                        name:'double' ,
                        builder: (context, state) => HomeDetailsDetailsScreen(),
                      )
                    ]
                ),

              ]
          ),
          GoRoute(
            path: '/profile',
            name: 'profile',
            builder: (context, state) => ProfileScreen(),
          )

        ]
      )
    ]);
}


