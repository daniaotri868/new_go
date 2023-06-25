import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled2/app_cubit.dart';

class Start extends StatelessWidget {
   Start({Key? key, required this.screen}) : super(key: key);
  final Widget screen;
   int index=0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AppCubit(),
       child: BlocBuilder<AppCubit,AppState>(
         builder: (context, state) {
           return Scaffold(
             body: screen,
             bottomNavigationBar: BottomNavigationBar(
               showSelectedLabels: false,
               showUnselectedLabels: false,
               elevation: 0,
               backgroundColor: Colors.black,
               unselectedItemColor: Colors.white,
               onTap: (value) {
                 AppCubit.get(context).Fun(value);
                 if(AppCubit.get(context).index==0)
                 {
                   // context.read<AppState>();
                   context.goNamed('home');
                   // context.go('/home');
                 }
                 else
                 {
                   // context.read<AppState>();
                   context.goNamed('profile');
                   // context.go('/profile');
                 }
                 print("index = ${AppCubit.get(context).index}");
               },
               currentIndex:AppCubit.get(context).index,
               items: const [
                 BottomNavigationBarItem(
                     icon: Icon(Icons.home),
                     label: ""
                 ),
                 BottomNavigationBarItem(
                     icon: Icon(Icons.add),
                     label: ""
                 ),
               ],
               type: BottomNavigationBarType.fixed,
             ),
           );
         },
       ),
    );
  }
}
