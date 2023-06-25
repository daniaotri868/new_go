import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeDetailsDetailsScreen extends StatelessWidget {
  const HomeDetailsDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child:TextButton(onPressed: () {
        context.goNamed('home');
      }, child:  const Text(
        'Home Details Details',
        style: TextStyle(
            color: Colors.black
        ),
      ),)
    );
  }
}
