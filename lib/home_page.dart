import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Home')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              context.go('/profile');
            },
            child:const Text('Go to Profile'),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/product/123');
            },
            child:const Text('Go to Product 123'),
          ),
        ],
      ),
    );
  }
}
