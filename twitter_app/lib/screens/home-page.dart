import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.ac_unit_rounded),
            Icon(Icons.add_moderator_outlined),
            Icon(Icons.favorite_border_outlined),
          ],
        ),
        centerTitle: true,
      ),
    );
  }
}
