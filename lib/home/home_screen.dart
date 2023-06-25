import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(onPressed: () {
          context.goNamed('details');
        }, child:  const Text('Home1', style: TextStyle(
            color: Colors.black
        )),),
        const SizedBox(height: 30,),
        MaterialButton(onPressed: () {
          // context.go('/profile');
        }, child:  Text('Home1', style: TextStyle(color: Colors.black)),)
      ],
    );
  }
}
