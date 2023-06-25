import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeDetailsScreen extends StatelessWidget {
  const HomeDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: TextButton(
        onPressed: () {
          context.goNamed('double');
        },
        child: const Text(
          'Home Details',
          style: TextStyle(
              color: Colors.black
          ),
        ),
      )
    );
  }
}
