import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddClothesPage extends StatefulWidget {
  const AddClothesPage({super.key});

  @override
  State<AddClothesPage> createState() => _AddClothesPageState();
}

class _AddClothesPageState extends State<AddClothesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Go to Second Page'),
          ),
        ),
      ),
    );
  }
}
